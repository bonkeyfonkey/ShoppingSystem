class PagesController < ApplicationController
  def adminhome
  @products = Product.all
    @order_item = current_order.order_items.new
	 @users = User.all
    
  end
end
