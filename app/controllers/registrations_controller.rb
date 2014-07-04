class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_parameters 

  def configure_parameters
    devise_parameter_sanitizer.for(:sign_up) { |user| user.permit(:name, :phone, :email, :password, :password_confirmation, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |diner| diner.permit(:name, :phone, :email, :password, :password_confirmation, :current_password) }
  end

  def new
    super
  end

  def create
   super
  end

  def update
    super
  end

end 