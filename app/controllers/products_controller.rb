class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index'
  end

  def show
    @product = Product.find(params['id'])
    @category = @product.category.name
    render 'show'
  end

  def new
    @categories = Category.all
    render 'new'
  end

  def edit
    @product = Product.find(params['id'])
    @categories = Category.all
    render 'edit'
  end

  def create
    puts 'made it!'
    puts Product.create(user_params)
    redirect_to '/products'
  end

  def update
    product = Product.find(params['id'])
    product.update(user_params)
    redirect_to '/products'
  end

  def destroy
    Product.destroy(params['id'])
    redirect_to '/products'
  end
  private
    def user_params
      params.require(:product).permit(:name, :description, :price, :category_id)
    end
end
