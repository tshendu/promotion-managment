class ApplicationController < ActionController::Base
  include Pundit
  add_flash_types :danger,  :warning, :success
  before_action :configure_permitted_parameters, if:  :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :member_not_authorized

  # Authorization not allowed message and redirect to root page.
  private
  def member_not_authorized
    flash[:error] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

  # To permit  additional fields for devise signup page.
  protected
  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:department_id])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:designation_id])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:status_type])

  end
end
