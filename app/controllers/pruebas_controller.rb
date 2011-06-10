#encoding: utf-8
class PruebasController < ApplicationController
  before_filter :establecer_tab
  skip_before_filter :autorizar

  def index

      @pruebas = Prueba.includes([:pasta, :horno]).order('fecha desc')

  end

  def show
    @prueba = @pasta.nil? ? Prueba.find(params[:id]) : @pasta.pruebas.find(params[:id])
  end

  def new
    @prueba = Prueba.new
    find_productos
  end

  def create
    @prueba = Prueba.new(params[:prueba])
    if @prueba.save
      redirect_to pruebas_path, :notice => "La creación de la prueba se ejuto con exito."
    else
      find_productos
      render :action => 'new'
    end
  end

  def edit
    @prueba = Prueba.find(params[:id])
    if @prueba.control.nil?
      @prueba.build_control
    end
    find_productos
  end

  def update
    @prueba = Prueba.find(params[:id])
    if @prueba.update_attributes(params[:prueba])
      redirect_to pruebas_path, :notice  => "La prueba se ha actualizado."
    else
      find_productos
      render :action => 'edit'
    end
  end

  def destroy
    @prueba = Prueba.find(params[:id])
    @prueba.destroy redirect_to pruebas_url, :notice => "Se han borrado los datos de la prueba"
  end

  private

  def establecer_tab
    @tab = "Pruebas"
  end
  def find_productos
    @productos = Producto.all.collect {|p| [p.referencia, p.id]}
  end

end
