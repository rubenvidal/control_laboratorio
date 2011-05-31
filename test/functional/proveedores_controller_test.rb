require 'test_helper'

class ProveedoresControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Proveedor.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Proveedor.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Proveedor.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to proveedor_url(assigns(:proveedor))
  end

  def test_edit
    get :edit, :id => Proveedor.first
    assert_template 'edit'
  end

  def test_update_invalid
    Proveedor.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Proveedor.first
    assert_template 'edit'
  end

  def test_update_valid
    Proveedor.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Proveedor.first
    assert_redirected_to proveedor_url(assigns(:proveedor))
  end

  def test_destroy
    proveedor = Proveedor.first
    delete :destroy, :id => proveedor
    assert_redirected_to proveedores_url
    assert !Proveedor.exists?(proveedor.id)
  end
end
