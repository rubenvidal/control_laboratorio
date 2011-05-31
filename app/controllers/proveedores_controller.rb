class ProveedoresController < ApplicationController
  before_filter :establecer_tab
  def index
    @proveedores = Proveedor.all
  end

  def show
    @proveedor = Proveedor.find(params[:id])
  end

  def new
    @proveedor = Proveedor.new
  end

  def create
    @proveedor = Proveedor.new(params[:proveedor])
    if @proveedor.save
      redirect_to @proveedor, :notice => "Successfully created proveedor."
    else
      render :action => 'new'
    end
  end

  def edit
    @proveedor = Proveedor.find(params[:id])
  end

  def update
    @proveedor = Proveedor.find(params[:id])
    if @proveedor.update_attributes(params[:proveedor])
      redirect_to @proveedor, :notice  => "Successfully updated proveedor."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @proveedor = Proveedor.find(params[:id])
    @proveedor.destroy
    redirect_to proveedores_url, :notice => "Successfully destroyed proveedor."
  end
  private
  def establecer_tab
    @tab = "Proveedores"
  end
end
