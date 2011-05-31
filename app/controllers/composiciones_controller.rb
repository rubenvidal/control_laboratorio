class ComposicionesController < ApplicationController
  def index
    @composiciones = Composicion.all
  end

  def show
    @composicion = Composicion.find(params[:id])
  end

  def new
    @composicion = Composicion.new
  end

  def create
    @composicion = Composicion.new(params[:composicion])
    if @composicion.save
      redirect_to @composicion, :notice => "Successfully created composicion."
    else
      render :action => 'new'
    end
  end

  def edit
    @composicion = Composicion.find(params[:id])
  end

  def update
    @composicion = Composicion.find(params[:id])
    if @composicion.update_attributes(params[:composicion])
      redirect_to @composicion, :notice  => "Successfully updated composicion."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @composicion = Composicion.find(params[:id])
    @composicion.destroy
    redirect_to composiciones_url, :notice => "Successfully destroyed composicion."
  end
end
