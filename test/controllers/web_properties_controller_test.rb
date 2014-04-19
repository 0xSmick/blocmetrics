require 'test_helper'

class WebPropertiesControllerTest < ActionController::TestCase
  setup do
    @web_property = web_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_property" do
    assert_difference('WebProperty.count') do
      post :create, web_property: { name: @web_property.name, url: @web_property.url, user_id: @web_property.user_id }
    end

    assert_redirected_to web_property_path(assigns(:web_property))
  end

  test "should show web_property" do
    get :show, id: @web_property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_property
    assert_response :success
  end

  test "should update web_property" do
    patch :update, id: @web_property, web_property: { name: @web_property.name, url: @web_property.url, user_id: @web_property.user_id }
    assert_redirected_to web_property_path(assigns(:web_property))
  end

  test "should destroy web_property" do
    assert_difference('WebProperty.count', -1) do
      delete :destroy, id: @web_property
    end

    assert_redirected_to web_properties_path
  end
end
