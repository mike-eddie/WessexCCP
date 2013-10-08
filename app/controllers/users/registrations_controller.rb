class Users::RegistrationsController < Devise::RegistrationsController
  
  def new
    resource = build_resource({})
    resource.build_student
    respond_with resource
  end

  def create
  	super
  end

  def update
  	super
  end
  
end
