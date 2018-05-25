class Admin::ProductsController < ApplicationController

  def index
    @categories = categories.order(id: :desc).all
  end

  def new
    @product = categories.new
  end

  def create
    @product = categories.new(product_params)

    if @product.save
      redirect_to [:admin, :products], notice: 'categories created!'
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(
      # :name,
      # :description,
      # :category_id,
      # :quantity,
      # :image,
      # :price
    )
  end

end
