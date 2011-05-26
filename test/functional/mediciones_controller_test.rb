require 'test_helper'

class MedicionesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Medicion.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Medicion.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Medicion.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to medicion_url(assigns(:medicion))
  end

  def test_edit
    get :edit, :id => Medicion.first
    assert_template 'edit'
  end

  def test_update_invalid
    Medicion.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Medicion.first
    assert_template 'edit'
  end

  def test_update_valid
    Medicion.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Medicion.first
    assert_redirected_to medicion_url(assigns(:medicion))
  end

  def test_destroy
    medicion = Medicion.first
    delete :destroy, :id => medicion
    assert_redirected_to mediciones_url
    assert !Medicion.exists?(medicion.id)
  end
end
