class ExportController < ApplicationController
  def index
    @product = Product.new
  end

  def show
    @product = Product.last
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to show_path
    else
      flash[:danger] = 'PDFが取れませんでした'
      redirect_to root_path
    end
  end

  private
    def product_params
      params[:product].permit(:pdf)
    end
end
