require 'test_helper'

class Admin::OffersControllerTest < ActionController::TestCase
  setup do
    @admin_offer = admin_offers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_offer" do
    assert_difference('Admin::Offer.count') do
      post :create, admin_offer: { content: @admin_offer.content, store: @admin_offer.store }
    end

    assert_redirected_to admin_offer_path(assigns(:admin_offer))
  end

  test "should show admin_offer" do
    get :show, id: @admin_offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_offer
    assert_response :success
  end

  test "should update admin_offer" do
    put :update, id: @admin_offer, admin_offer: { content: @admin_offer.content, store: @admin_offer.store }
    assert_redirected_to admin_offer_path(assigns(:admin_offer))
  end

  test "should destroy admin_offer" do
    assert_difference('Admin::Offer.count', -1) do
      delete :destroy, id: @admin_offer
    end

    assert_redirected_to admin_offers_path
  end
end
