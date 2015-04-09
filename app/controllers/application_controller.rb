class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  include ApplicationHelper

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
  
  def authorise
        unless signed_in?
           store_location
           redirect_to signin_path, :notice => "Please sign in to access this page."
        end
  end

   def store_location
       session[:return_to] = request.fullpath
   end
   
end

