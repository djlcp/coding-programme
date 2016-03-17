class StaticPagesController < ApplicationController

  def home
    @products = Product.all
  end

end