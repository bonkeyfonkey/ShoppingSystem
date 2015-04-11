module ApplicationHelper

def signed_in?
   
       unless session[:user_type].nil?
	   
 
			@current_user = User.find_by_id(session[:User_id]) || @current_admin = Admin.find_by_id(session[:admin_id])
			end
  

  
  end
  
  end

