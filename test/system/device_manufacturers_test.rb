require "application_system_test_case"

class DeviceManufacturersTest < ApplicationSystemTestCase
  setup do
    @device_manufacturer = device_manufacturers(:one)
  end

  test "visiting the index" do
    visit device_manufacturers_url
    assert_selector "h1", text: "Device manufacturers"
  end

  test "should create device manufacturer" do
    visit device_manufacturers_url
    click_on "New device manufacturer"

    fill_in "Name", with: @device_manufacturer.name
    fill_in "Website", with: @device_manufacturer.website
    click_on "Create Device manufacturer"

    assert_text "Device manufacturer was successfully created"
    click_on "Back"
  end

  test "should update Device manufacturer" do
    visit device_manufacturer_url(@device_manufacturer)
    click_on "Edit this device manufacturer", match: :first

    fill_in "Name", with: @device_manufacturer.name
    fill_in "Website", with: @device_manufacturer.website
    click_on "Update Device manufacturer"

    assert_text "Device manufacturer was successfully updated"
    click_on "Back"
  end

  test "should destroy Device manufacturer" do
    visit device_manufacturer_url(@device_manufacturer)
    click_on "Destroy this device manufacturer", match: :first

    assert_text "Device manufacturer was successfully destroyed"
  end
end
