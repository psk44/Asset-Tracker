require "test_helper"

class DeviceManufacturersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device_manufacturer = device_manufacturers(:one)
  end

  test "should get index" do
    get device_manufacturers_url
    assert_response :success
  end

  test "should get new" do
    get new_device_manufacturer_url
    assert_response :success
  end

  test "should create device_manufacturer" do
    assert_difference("DeviceManufacturer.count") do
      post device_manufacturers_url, params: { device_manufacturer: { name: @device_manufacturer.name, website: @device_manufacturer.website } }
    end

    assert_redirected_to device_manufacturer_url(DeviceManufacturer.last)
  end

  test "should show device_manufacturer" do
    get device_manufacturer_url(@device_manufacturer)
    assert_response :success
  end

  test "should get edit" do
    get edit_device_manufacturer_url(@device_manufacturer)
    assert_response :success
  end

  test "should update device_manufacturer" do
    patch device_manufacturer_url(@device_manufacturer), params: { device_manufacturer: { name: @device_manufacturer.name, website: @device_manufacturer.website } }
    assert_redirected_to device_manufacturer_url(@device_manufacturer)
  end

  test "should destroy device_manufacturer" do
    assert_difference("DeviceManufacturer.count", -1) do
      delete device_manufacturer_url(@device_manufacturer)
    end

    assert_redirected_to device_manufacturers_url
  end
end
