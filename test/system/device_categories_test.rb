require "application_system_test_case"

class DeviceCategoriesTest < ApplicationSystemTestCase
  setup do
    @device_category = device_categories(:one)
  end

  test "visiting the index" do
    visit device_categories_url
    assert_selector "h1", text: "Device categories"
  end

  test "should create device category" do
    visit device_categories_url
    click_on "New device category"

    fill_in "Name", with: @device_category.name
    click_on "Create Device category"

    assert_text "Device category was successfully created"
    click_on "Back"
  end

  test "should update Device category" do
    visit device_category_url(@device_category)
    click_on "Edit this device category", match: :first

    fill_in "Name", with: @device_category.name
    click_on "Update Device category"

    assert_text "Device category was successfully updated"
    click_on "Back"
  end

  test "should destroy Device category" do
    visit device_category_url(@device_category)
    click_on "Destroy this device category", match: :first

    assert_text "Device category was successfully destroyed"
  end
end
