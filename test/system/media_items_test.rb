require "application_system_test_case"

class MediaItemsTest < ApplicationSystemTestCase
  setup do
    @media_item = media_items(:one)
  end

  test "visiting the index" do
    visit media_items_url
    assert_selector "h1", text: "Media Items"
  end

  test "creating a Media item" do
    visit media_items_url
    click_on "New Media Item"

    fill_in "Description", with: @media_item.description
    fill_in "Id", with: @media_item.id
    fill_in "Name", with: @media_item.name
    fill_in "Source", with: @media_item.source
    fill_in "Url", with: @media_item.url
    click_on "Create Media item"

    assert_text "Media item was successfully created"
    click_on "Back"
  end

  test "updating a Media item" do
    visit media_items_url
    click_on "Edit", match: :first

    fill_in "Description", with: @media_item.description
    fill_in "Id", with: @media_item.id
    fill_in "Name", with: @media_item.name
    fill_in "Source", with: @media_item.source
    fill_in "Url", with: @media_item.url
    click_on "Update Media item"

    assert_text "Media item was successfully updated"
    click_on "Back"
  end

  test "destroying a Media item" do
    visit media_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Media item was successfully destroyed"
  end
end
