class RegistrationController < ApplicationController

  def profile

  	@user = current_user


  	if @user.complete != true

		  if @user.role == "Student"
        @student = Student.new
  		  @student.user_id = current_user.id
      end
      
      if @user.role == "Teacher"
  		  @clinician = Clinician.new
  		  @clinician.user_id = current_user.id
      end

      if @user.role == "Admin"
        @admin = Admin.new
        @admin.user_id = current_user.id
      end

  	else

  		current_user.complete == true

  		@student = @user.student
  		@clinician = @user.clinician

  	end

  end

  def edit_profile
    @user = current_user
    @student = @user.student
  end

end
