require 'test_helper'

class ComposicionesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Composicion.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Composicion.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Composicion.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to composicion_url(assigns(:composicion))
  end

  def test_edit
    get :edit, :id => Composicion.first
    assert_template 'edit'
  end

  def test_update_invalid
    Composicion.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Composicion.first
    assert_template 'edit'
  end

  def test_update_valid
    Composicion.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Composicion.first
    assert_redirected_to composicion_url(assigns(:composicion))
  end

  def test_destroy
    composicion = Composicion.first
    delete :destroy, :id => composicion
    assert_redirected_to composiciones_url
    assert !Composicion.exists?(composicion.id)
  end
end
