#encoding: utf-8
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:nombre], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Sesión iniciada!"
    else
      flash.now.alert = "nombre or password incorrectos"
      render "new"
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Sesión cerrada"
  end

end
