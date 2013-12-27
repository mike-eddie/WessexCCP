class RegistrationController < ApplicationController

  def profile

  	@user = current_user


  	if @user.complete != true

		  @student = Student.new
  		@student.user_id = current_user.id
      

  		@clinician = Clinician.new
  		@clinician.user_id = current_user.id

  	else

  		current_user.complete == true

  		@student = @user.student
  		@clinician = @user.clinician

  	end
 


  end

end
