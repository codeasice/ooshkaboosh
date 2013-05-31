require 'test_helper'

class OoshesControllerTest < ActionController::TestCase
  setup do
    @oosh = ooshes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ooshes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oosh" do
    assert_difference('Oosh.count') do
      post :create, oosh: { extra_text: @oosh.extra_text, full_text: @oosh.full_text, keyword: @oosh.keyword, stamp: @oosh.stamp }
    end

    assert_redirected_to oosh_path(assigns(:oosh))
  end

  test "should show oosh" do
    get :show, id: @oosh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oosh
    assert_response :success
  end

  test "should update oosh" do
    put :update, id: @oosh, oosh: { extra_text: @oosh.extra_text, full_text: @oosh.full_text, keyword: @oosh.keyword, stamp: @oosh.stamp }
    assert_redirected_to oosh_path(assigns(:oosh))
  end

  test "should destroy oosh" do
    assert_difference('Oosh.count', -1) do
      delete :destroy, id: @oosh
    end

    assert_redirected_to ooshes_path
  end
end
