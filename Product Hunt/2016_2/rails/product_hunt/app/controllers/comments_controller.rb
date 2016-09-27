class CommentsController < ApplicationController

  before_action :load_commentable

  def index
    # /admin/products/:product_id/comments
    # /images/:image_id/comments
    @comments = @commentable.comments
  end

  def new
    @comment = @commentable.comments.new
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      redirect_to [@commentable, :comments], notice: "Comment created."
    else
      render :new
    end
  end

  def edit
    @comment = @commentable.comments.find(params[:id])
  end

  def update
    @comment = @commentable.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to [@commentable, :comments], notice: "Comment updated."
    else
      render :edit
    end
  end

private

  def load_commentable
    klass = [Product].detect { |c| params["#{c.name.underscore}_id"]}
    @commentable = klass.find(params["#{klass.name.underscore}_id"])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end
