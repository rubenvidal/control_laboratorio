require 'test_helper'

class PastasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Pasta.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Pasta.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Pasta.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to pasta_url(assigns(:pasta))
  end

  def test_edit
    get :edit, :id => Pasta.first
    assert_template 'edit'
  end

  def test_update_invalid
    Pasta.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Pasta.first
    assert_template 'edit'
  end

  def test_update_valid
    Pasta.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Pasta.first
    assert_redirected_to pasta_url(assigns(:pasta))
  end

  def test_destroy
    pasta = Pasta.first
    delete :destroy, :id => pasta
    assert_redirected_to pastas_url
    assert !Pasta.exists?(pasta.id)
  end
end
