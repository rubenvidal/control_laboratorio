require 'test_helper'

class HornosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Horno.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Horno.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Horno.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to horno_url(assigns(:horno))
  end

  def test_edit
    get :edit, :id => Horno.first
    assert_template 'edit'
  end

  def test_update_invalid
    Horno.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Horno.first
    assert_template 'edit'
  end

  def test_update_valid
    Horno.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Horno.first
    assert_redirected_to horno_url(assigns(:horno))
  end

  def test_destroy
    horno = Horno.first
    delete :destroy, :id => horno
    assert_redirected_to hornos_url
    assert !Horno.exists?(horno.id)
  end
end
