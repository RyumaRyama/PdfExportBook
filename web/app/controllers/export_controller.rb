class ExportController < ApplicationController
  def index
    @product = Product.new
  end

  def show
    @product = Product.new(product_params)
  end

  private
    def product_params
      params[Product].permit(:pdf)
    end
end
