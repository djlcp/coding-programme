class StaticPagesController < ApplicationController

  def home
    @products = Product.all
    if params[:s]
      @products = @products
        .where("title LIKE :s OR description LIKE :s", s: "%#{params[:s]}%")
    else params[:category]
      @products = @products.where(category: params[:category])
    end
  end

end