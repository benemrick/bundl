require "application_system_test_case"

class BundlsTest < ApplicationSystemTestCase
  setup do
    @bundl = bundls(:one)
  end

  test "visiting the index" do
    visit bundls_url
    assert_selector "h1", text: "Bundls"
  end

  test "creating a Bundl" do
    visit bundls_url
    click_on "New Bundl"

    fill_in "Color", with: @bundl.color
    fill_in "Description", with: @bundl.description
    fill_in "Title", with: @bundl.title
    click_on "Create Bundl"

    assert_text "Bundl was successfully created"
    click_on "Back"
  end

  test "updating a Bundl" do
    visit bundls_url
    click_on "Edit", match: :first

    fill_in "Color", with: @bundl.color
    fill_in "Description", with: @bundl.description
    fill_in "Title", with: @bundl.title
    click_on "Update Bundl"

    assert_text "Bundl was successfully updated"
    click_on "Back"
  end

  test "destroying a Bundl" do
    visit bundls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bundl was successfully destroyed"
  end
end
