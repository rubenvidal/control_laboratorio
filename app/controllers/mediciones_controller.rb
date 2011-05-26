class MedicionesController < ApplicationController
  def index
    @mediciones = Medicion.all
  end

  def show
    @medicion = Medicion.find(params[:id])
  end

  def new
    @medicion = Medicion.new
  end

  def create
    @medicion = Medicion.new(params[:medicion])
    if @medicion.save
      redirect_to @medicion, :notice => "Successfully created medicion."
    else
      render :action => 'new'
    end
  end

  def edit
    @medicion = Medicion.find(params[:id])
  end

  def update
    @medicion = Medicion.find(params[:id])
    if @medicion.update_attributes(params[:medicion])
      redirect_to @medicion, :notice  => "Successfully updated medicion."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @medicion = Medicion.find(params[:id])
    @medicion.destroy
    redirect_to mediciones_url, :notice => "Successfully destroyed medicion."
  end
end
