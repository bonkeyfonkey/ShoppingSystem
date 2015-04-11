class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name]) 
    if user.present?
      session[:user_type] = 'User'
      redirect_to '/products'
    else
      admin = Admin.find_by_name(params[:name])
      if admin.present? 
        session[:user_type] = 'Admin'
        redirect_to '/pages/adminhome'
		
		end
		end
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