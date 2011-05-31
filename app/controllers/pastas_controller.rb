class PastasController < ApplicationController
  def index
    @pastas = Pasta.all
  end

  def show
    @pasta = Pasta.find(params[:id])
  end

  def new
    @pasta = Pasta.new
  end

  def create
    @pasta = Pasta.new(params[:pasta])
    if @pasta.save
      redirect_to @pasta, :notice => "Successfully created pasta."
    else
      render :action => 'new'
    end
  end

  def edit
    @pasta = Pasta.find(params[:id])
  end

  def update
    @pasta = Pasta.find(params[:id])
    if @pasta.update_attributes(params[:pasta])
      redirect_to @pasta, :notice  => "Successfully updated pasta."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @pasta = Pasta.find(params[:id])
    @pasta.destroy
    redirect_to pastas_url, :notice => "Successfully destroyed pasta."
  end
end
