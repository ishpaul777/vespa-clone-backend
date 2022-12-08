class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, if: proc { |c| c.request.format != 'application/json' }
  protect_from_forgery with: :null_session, if: proc { |c| c.request.format == 'application/json' }

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name role])
  end
end
