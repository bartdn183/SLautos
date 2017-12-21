class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    around_action :user_time_zone, :if => :current_user

    rescue_from CanCan::AccessDenied do |exception|
      respond_to do |format|
        format.html { redirect_to root_url, :alert => exception.message }
      end
    end
    
    def user_time_zone(&block)
      Time.use_zone(current_user.time_zone, &block)
    end

    protected

    def configure_permitted_parameters
	   devise_parameter_sanitizer.permit(:sign_up, keys: [:locale, :time_zone, :firstname, :lastname, :role, :city, :country])
	   devise_parameter_sanitizer.permit(:account_update, keys: [:locale, :time_zone, :firstname, :lastname, :role, :city, :country])
	end

	def after_sign_in_path_for(resource_or_scope)
      cars_path
  	end
end
