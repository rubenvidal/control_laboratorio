class ProductosController < ApplicationController
  before_filter :establecer_tab
  def index
    @productos = Producto.all
  end

  def show
    @producto = Producto.find(params[:id])
  end

  def new
    @producto = Producto.new
  end

  def create
    @producto = Producto.new(params[:producto])
    if @producto.save
      redirect_to @producto, :notice => "Successfully created producto."
    else
      render :action => 'new'
    end
  end

  def edit
    @producto = Producto.find(params[:id])
  end

  def update
    @producto = Producto.find(params[:id])
    if @producto.update_attributes(params[:producto])
      redirect_to @producto, :notice  => "Successfully updated producto."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @producto = Producto.find(params[:id])
    @producto.destroy
    redirect_to productos_url, :notice => "Successfully destroyed producto."
  end
  private
  def establecer_tab
    @tab = "Productos"
  end
end
