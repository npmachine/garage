# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  def decoded_param
    UrlEncoder.decode Array(params[:id].to_i)
  end

  private
    def configure_devise_permitted_parameters
      devise_params = %i[name email password password_confirmation]

      devise_parameter_sanitizer.permit(:sign_up, keys: devise_params)
      devise_parameter_sanitizer.permit(:sign_in, keys: devise_params << :login)
      devise_parameter_sanitizer.permit(:account_update, keys: devise_params << :current_password)
    end
end
