class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  before_filter :autorizar


  def autorizar
    if current_user
      true
    else
      redirect_to "/log_in", :alert => "Acceso denegado"
    end
  end
  protected :autorizar


  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
