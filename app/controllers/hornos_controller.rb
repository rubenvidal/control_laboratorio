class HornosController < ApplicationController
  def index
    @hornos = Horno.all
  end

  def show
    @horno = Horno.find(params[:id])
  end

  def new
    @horno = Horno.new
  end

  def create
    @horno = Horno.new(params[:horno])
    if @horno.save
      redirect_to @horno, :notice => "Successfully created horno."
    else
      render :action => 'new'
    end
  end

  def edit
    @horno = Horno.find(params[:id])
  end
  def nuevas_mediciones
    @horno = Horno.find(params[:id])
    @horno.mediciones.build
    @horno.quemadores.each do |quemador|
      puts quemador.nombre
      quemador.valores.build
    end
  end
  def crear_mediciones
  end
  def update
    @horno = Horno.find(params[:id])
    if @horno.update_attributes(params[:horno])
      redirect_to @horno, :notice  => "Successfully updated horno."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @horno = Horno.find(params[:id])
    @horno.destroy
    redirect_to hornos_url, :notice => "Successfully destroyed horno."
  end
end
