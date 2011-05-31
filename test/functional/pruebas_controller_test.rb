require 'test_helper'

class PruebasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Prueba.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Prueba.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Prueba.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to prueba_url(assigns(:prueba))
  end

  def test_edit
    get :edit, :id => Prueba.first
    assert_template 'edit'
  end

  def test_update_invalid
    Prueba.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Prueba.first
    assert_template 'edit'
  end

  def test_update_valid
    Prueba.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Prueba.first
    assert_redirected_to prueba_url(assigns(:prueba))
  end

  def test_destroy
    prueba = Prueba.first
    delete :destroy, :id => prueba
    assert_redirected_to pruebas_url
    assert !Prueba.exists?(prueba.id)
  end
end
