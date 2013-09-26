require 'test_helper'

class Admin::SpecialsControllerTest < ActionController::TestCase
  setup do
    @admin_special = admin_specials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_specials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_special" do
    assert_difference('Admin::Special.count') do
      post :create, admin_special: { content: @admin_special.content, image: @admin_special.image, is_published: @admin_special.is_published, posted: @admin_special.posted, title: @admin_special.title }
    end

    assert_redirected_to admin_special_path(assigns(:admin_special))
  end

  test "should show admin_special" do
    get :show, id: @admin_special
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_special
    assert_response :success
  end

  test "should update admin_special" do
    put :update, id: @admin_special, admin_special: { content: @admin_special.content, image: @admin_special.image, is_published: @admin_special.is_published, posted: @admin_special.posted, title: @admin_special.title }
    assert_redirected_to admin_special_path(assigns(:admin_special))
  end

  test "should destroy admin_special" do
    assert_difference('Admin::Special.count', -1) do
      delete :destroy, id: @admin_special
    end

    assert_redirected_to admin_specials_path
  end
end
