class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!

  before_filter :configure_permitted_parameters, if: :devise_controller?


  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) {|u|
      u.permit(:username,:gender,:email,:password, :password_confirmation)
    }
    devise_parameter_sanitizer.for(:account_update) {|u|
      u.permit(:gender, :name, :current_password,:events => :id)
    }
  end
  def after_sign_in_path_for(resource_or_scope)
    '/'
  end

  def after_sign_out_path_for(resource_or_scope)
    '/'
  end
end
