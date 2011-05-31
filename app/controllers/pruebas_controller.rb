class PruebasController < ApplicationController
  def index
    @pruebas = Prueba.all
  end

  def show
    @prueba = Prueba.find(params[:id])
  end

  def new
    @prueba = Prueba.new
  end

  def create
    @prueba = Prueba.new(params[:prueba])
    if @prueba.save
      redirect_to @prueba, :notice => "Successfully created prueba."
    else
      render :action => 'new'
    end
  end

  def edit
    @prueba = Prueba.find(params[:id])
  end

  def update
    @prueba = Prueba.find(params[:id])
    if @prueba.update_attributes(params[:prueba])
      redirect_to @prueba, :notice  => "Successfully updated prueba."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @prueba = Prueba.find(params[:id])
    @prueba.destroy
    redirect_to pruebas_url, :notice => "Successfully destroyed prueba."
  end
end
