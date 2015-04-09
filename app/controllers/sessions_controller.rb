class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name]) 
    
      session[:user_id] = 'User'
      redirect_to '/products'
    
    end
	
		
		
  def destroy
  if signed_in?
      session[:user_type] = nil
	  else
      flash[:notice] = "You need to sign in first"    
    end

    redirect_to signin_path
  end

end