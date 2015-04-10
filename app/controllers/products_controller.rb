class ProductsController < ApplicationController

  def index
  
    @products = Product.all
    @order_item = current_order.order_items.new
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    
  end
  
  
  
   # GET /products/1
  # GET /products/1.json
   def show
    @product = Product.find(params[:id])
	@comments = @product.comments.all
    @comment = @product.comments.build
	
	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end
  
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

 def edit
    @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def search
  @products = Product.search params[:q]
  render 'searchindex'
  end
  
  
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
end
