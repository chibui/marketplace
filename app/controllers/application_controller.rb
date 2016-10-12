class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:tos_status, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:tos_status, :email, :password])
  end

  def after_sign_in_path_for(resource_or_scope)
    if resource.sign_in_count == 1
        pages_profile_url
    else
        root_path
    end
  end

end
