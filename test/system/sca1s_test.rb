require "application_system_test_case"

class Sca1sTest < ApplicationSystemTestCase
  setup do
    @sca1 = sca1s(:one)
  end

  test "visiting the index" do
    visit sca1s_url
    assert_selector "h1", text: "Sca1s"
  end

  test "creating a Sca1" do
    visit sca1s_url
    click_on "New Sca1"

    fill_in "Description", with: @sca1.description
    fill_in "Image", with: @sca1.image
    fill_in "Title", with: @sca1.title
    click_on "Create Sca1"

    assert_text "Sca1 was successfully created"
    click_on "Back"
  end

  test "updating a Sca1" do
    visit sca1s_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sca1.description
    fill_in "Image", with: @sca1.image
    fill_in "Title", with: @sca1.title
    click_on "Update Sca1"

    assert_text "Sca1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sca1" do
    visit sca1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sca1 was successfully destroyed"
  end
end
