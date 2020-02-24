class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  before_action :set_categories
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:family_name,:first_name,:family_name_kana,:first_name_kana,:birthday])
    end

    def set_categories
      @parents = Category.roots
    end
end
