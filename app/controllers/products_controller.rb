class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    @product = Product.create(params_var)
    if @product.save
      params[:category_id].each do | c |
        categoria = Category.find(c)
        @product.categories << categoria
      end
      redirect_to products_path, notice: "El producto fue creado con éxito"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
    render :new
  end

  def update
    product = Product.find(params[:id])
    product.categories.delete_all
    if product.update(params_var)
      params[:category_id].each do | c |
        categoria = Category.find(c)
        product.categories << categoria
      end
      redirect_to products_path, notice: "El producto fue actualizado con éxito"
    else
      render :edit
    end 
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to :root, notice: "El producto fue eliminado con éxito"
  end

  private
  def params_var
    params.require(:product).permit(:name, :price)
  end

end
