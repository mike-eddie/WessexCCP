class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  helper_method :admin?
  helper_method :student?
  helper_method :teacher?
  helper_method :registration_complete?
  helper_method :fb_waiting

  def fb_waiting
  	  if student?
   		@current_student = current_user.student
   		#@fb_not_required = current_user.student.attendances.teaching_sessions.find(:all, :conditions => ["fb_not_required = true"])
   		
   		@fb_waiting = @current_student.attendances.where("fb_complete = true")
   	 	count = (@current_student.attendances.count() - @fb_waiting.count()) 
   	 	return count
  	  end
  end


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

	def student?
		begin
		  if current_user.role == "Student"
			true
		  else
		  	false
		  end
		rescue
			false
		end
	end

	def teacher?
		begin
		  if current_user.role == "Teacher"
			true
		  else
		  	false
		  end
		rescue
			false
		end
	end

	def registration_complete?
		begin
			if user_signed_in?
				if current_user.complete == true
			  		true
				else
			  		false
		   		end
		  	else
		  		false
		  	end
		end
	end

		  

	def authorize
	  unless admin?
	    flash[:error] = "unauthorized access"
	    redirect_to pages_home_path
	    false
	  end
	end

	def redirect_to_profile
	  unless registration_complete?
	    flash[:error] = "Please complete your profile details before continuing"
	    redirect_to registration_profile_path
	    false
	  end
	end

end
