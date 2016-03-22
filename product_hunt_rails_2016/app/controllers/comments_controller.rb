class CommentsController < ApplicationController

  before_action :authenticate_user!

  before_action :set_product

  def create
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      flash[:notice] = 'Successfully created comment'
      redirect_to product_path(@product)
    else
      @comments = @product.comments
      render 'products/show'
    end
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end
