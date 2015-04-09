class ProductsController < ApplicationController

  def index
  
    @products = Product.all
    @order_item = current_order.order_items.new
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    
  end
  
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @catering }
    end
  end
  
  
  
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_url, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
end
