#encoding: utf-8
class MedicionesController < ApplicationController
  before_filter :find_horno
  before_filter :establecer_tab
  skip_before_filter :autorizar, :except => [:destroy]

  def index
    @mediciones = @horno.mediciones.order('fecha desc')
  end

  def show
    @medicion = @horno.mediciones.find(params[:id], :include => {:valores => :quemador})
  end

  def new
    @medicion = @horno.mediciones.new
    @horno.quemadores.each do |quemador|
      @medicion.valores.build(:quemador => quemador)
    end
  end

  def create
    @medicion = @horno.mediciones.new(params[:medicion])
    if @medicion.save
      redirect_to [@horno, @medicion], :notice  => "Successfully created medicion."
    else
      render :action => 'new'
    end
  end

  def edit
    @medicion = @horno.mediciones.find(params[:id])
  end

  def update
    @medicion = @horno.mediciones.find(params[:id])
    if @medicion.update_attributes(params[:medicion])
      redirect_to [@horno, @medicion], :notice  => "Successfully updated medicion."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @medicion = @horno.mediciones.find(params[:id])
    @medicion.destroy
    redirect_to horno_mediciones_path(@horno), :notice => "La medición ha sido Eliminada."
  end
  private
    def find_horno
      @horno = Horno.find(params[:horno_id])
    end
  def establecer_tab
    @tab = "Mediciones #{@horno.codigo}"
  end
end
