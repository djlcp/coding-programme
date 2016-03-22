class VotesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_product

  def create
    @vote = @product.votes.new(user: current_user)
    if @vote.save
      render js: 'alert("successfully upvoted!!")'
    else
      render js: 'alert("You cant upvote more than once")'
    end
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

end
