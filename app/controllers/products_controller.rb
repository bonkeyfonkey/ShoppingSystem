class ProductsController < ApplicationController
  def index
   
    @products = Product.all
    @order_item = current_order.order_items.new
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    
  end
end
