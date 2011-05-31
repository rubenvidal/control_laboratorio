#encoding: utf-8
class PruebasController < ApplicationController
  before_filter :find_pasta
  before_filter :establecer_tab
  def index
    @pruebas = @pasta.pruebas.order('fecha desc')
  end

  def show
    @prueba = @pasta.pruebas.find(params[:id])
  end

  def new
    @prueba = @pasta.pruebas.new
  end

  def create
    @prueba = @pasta.pruebas.new(params[:prueba])
    if @prueba.save
      redirect_to [@pasta, @prueba], :notice => "La creación de la prueba se ejuto con exito."
    else
      render :action => 'new'
    end
  end

  def edit
    @prueba = @pasta.pruebas.find(params[:id])
  end

  def update
    @prueba = @pasta.pruebas.find(params[:id])
    if @prueba.update_attributes(params[:prueba])
      redirect_to [@pasta, @prueba], :notice  => "Successfully updated prueba."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @prueba = @pasta.pruebas.find(params[:id])
    @prueba.destroy
    redirect_to pasta_pruebas_url(@pasta), :notice => "Successfully destroyed prueba."
  end
  private
    def find_pasta
      @pasta = Pasta.find(params[:pasta_id])
    end
    def establecer_tab
      @tab = "Pastas"
    end

end
