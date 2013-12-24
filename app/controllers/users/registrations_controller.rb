class Users::RegistrationsController < Devise::RegistrationsController
  

  def new
    resource = build_resource({})
    respond_with resource
  end

  def create
  	super
  end

  def update
  	super
  end

  def after_sign_up_path_for(resource)
    '/registration/profile'
  end

  
end
