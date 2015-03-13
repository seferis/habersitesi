require 'test_helper'

class HabersControllerTest < ActionController::TestCase
  setup do
    @haber = habers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:habers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create haber" do
    assert_difference('Haber.count') do
      post :create, haber: { aciklamasi: @haber.aciklamasi, baslik: @haber.baslik, kaynagi: @haber.kaynagi, resim: @haber.resim }
    end

    assert_redirected_to haber_path(assigns(:haber))
  end

  test "should show haber" do
    get :show, id: @haber
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @haber
    assert_response :success
  end

  test "should update haber" do
    patch :update, id: @haber, haber: { aciklamasi: @haber.aciklamasi, baslik: @haber.baslik, kaynagi: @haber.kaynagi, resim: @haber.resim }
    assert_redirected_to haber_path(assigns(:haber))
  end

  test "should destroy haber" do
    assert_difference('Haber.count', -1) do
      delete :destroy, id: @haber
    end

    assert_redirected_to habers_path
  end
end
