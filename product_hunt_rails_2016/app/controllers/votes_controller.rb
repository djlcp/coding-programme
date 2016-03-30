class VotesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_product

  def create
    @vote = @product.votes.new(user: current_user)
    if @vote.save
      redirect_to :back, notice: 'Upvoted!'
    else
      redirect_to :back, notice: 'You\'ve already upvoted!'
    end
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

end
