class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_responsavel!
  before_action :configure_permitted_parameters, if: :devise_controller?
  check_authorization unless: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
  	respond_to do |format|
  		format.html { render template: '../../public/404.html', status: 404 }
  		format.all { render nothing: true, status: 404 }
 	  end
	end

  def current_user
  	current_responsavel
  end

	protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :nome
  end


end
