require "application_system_test_case"

class SoftwaresTest < ApplicationSystemTestCase
  setup do
    @software = softwares(:one)
  end

  test "visiting the index" do
    visit softwares_url
    assert_selector "h1", text: "Softwares"
  end

  test "should create software" do
    visit softwares_url
    click_on "New software"

    fill_in "Assigned employees", with: @software.assigned_employees
    fill_in "License count", with: @software.license_count
    fill_in "Name", with: @software.name
    click_on "Create Software"

    assert_text "Software was successfully created"
    click_on "Back"
  end

  test "should update Software" do
    visit software_url(@software)
    click_on "Edit this software", match: :first

    fill_in "Assigned employees", with: @software.assigned_employees
    fill_in "License count", with: @software.license_count
    fill_in "Name", with: @software.name
    click_on "Update Software"

    assert_text "Software was successfully updated"
    click_on "Back"
  end

  test "should destroy Software" do
    visit software_url(@software)
    click_on "Destroy this software", match: :first

    assert_text "Software was successfully destroyed"
  end
end
