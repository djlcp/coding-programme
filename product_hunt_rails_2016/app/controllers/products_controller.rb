class ProductsController < ApplicationController

  before_action :authenticate_user!

  # def index
  #   @products = Product.all
  # end

  # def show
  #   @product = Product.find(params[:id])
  # end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    @product.user = current_user

    if @product.save
      flash[:notice] = 'Successfully created product'
      redirect_to root_path
    else
      render :new
    end

  end

  def edit
    @product = Product.find(params[:id])
  end

  def update

    @product = Product.find(params[:id])

    if @product.update(product_params)
      flash[:notice] = 'Successfully updated product'
      redirect_to root_path
    else
      render :edit
    end

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Deleted!"
    redirect_to root_path
  end



  private

  def product_params
    params.require(:product).permit(:title, :description, :url)
  end

end
