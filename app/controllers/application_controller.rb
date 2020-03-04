class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :photo, :address])
  end

   def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :photo, :address])
  end
end
