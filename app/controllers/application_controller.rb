class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  helper_method :admin?

	protected

	def admin?
		begin
		  if current_user.role == "Admin"
			true
		  else
		  	false
		  end
		rescue
			false
		end
	end

	def authorize
	  unless admin?
	    flash[:error] = "unauthorized access"
	    redirect_to pages_Home_path
	    false
	  end
	end

end
