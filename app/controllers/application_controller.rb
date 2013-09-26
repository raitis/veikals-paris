class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  helper_method :authorize?
  before_filter :set_locale

  private

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def set_locale
   	I18n.locale = params[:locale] if params[:locale].present?
  end

  # def default_url_options(options = {})
  #   {locale: I18n.locale}
  # end

  def self.default_url_options
      { :locale => I18n.locale }
  end

  def authorize?
    unless current_user
      redirect_to login_path
    end
  end

end
