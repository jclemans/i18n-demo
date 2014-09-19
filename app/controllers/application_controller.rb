class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_locale

  def default_url_options(options = {})
    {locale: I18n.locale}
  end


private
  def set_locale
    I18n.locale = params[:locale] if params[:locale].present?
  end
end
