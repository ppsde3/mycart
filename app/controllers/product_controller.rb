class ProductController < ApplicationController


  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product= Product.new(product_params)

  end

  def show
    @product= Product.find(params[:id])
  end

  private
    def product_params
      params.require(:user).permit(:title, :description, :price, :img)..with_defaults(img: "https://i01.appmifile.com/webfile/globalimg/in/cms/303D1336-249C-0113-DA94-01ED533069F8.jpg")
    end
end
