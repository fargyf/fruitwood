class ApplicationController < ActionController::Base
  protect_from_forgery

  # cancan exception handler
  rescue_from CanCan::AccessDenied do |exception|
    exception.default_message = I18n.t("unauthorized.default") || exception.default_message
    flash[:error] = exception.message
    redirect_to root_url
  end
end
