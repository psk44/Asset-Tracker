require "test_helper"

class DeviceCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device_category = device_categories(:one)
  end

  test "should get index" do
    get device_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_device_category_url
    assert_response :success
  end

  test "should create device_category" do
    assert_difference("DeviceCategory.count") do
      post device_categories_url, params: { device_category: { name: @device_category.name } }
    end

    assert_redirected_to device_category_url(DeviceCategory.last)
  end

  test "should show device_category" do
    get device_category_url(@device_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_device_category_url(@device_category)
    assert_response :success
  end

  test "should update device_category" do
    patch device_category_url(@device_category), params: { device_category: { name: @device_category.name } }
    assert_redirected_to device_category_url(@device_category)
  end

  test "should destroy device_category" do
    assert_difference("DeviceCategory.count", -1) do
      delete device_category_url(@device_category)
    end

    assert_redirected_to device_categories_url
  end
end
