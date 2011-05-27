class MedicionesController < ApplicationController
  before_filter :find_horno

  def index
    @mediciones = @horno.mediciones
  end

  def show
    @medicion = @horno.mediciones.find(params[:id])
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
    @medicion = Medicion.find(params[:id])
    @medicion.destroy
    redirect_to mediciones_url, :notice => "Successfully destroyed medicion."
  end
  private
    def find_horno
      @horno = Horno.find(params[:horno_id])
    end
end
