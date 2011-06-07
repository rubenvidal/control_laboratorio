#encoding: utf-8

class UsersController < ApplicationController
  before_filter :establecer_tab

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "!El registro se realizo con exito!"
    else
      render "new"
    end
  end

  private
  def establecer_tab
    @tab = "Usuarios"
  end
end
