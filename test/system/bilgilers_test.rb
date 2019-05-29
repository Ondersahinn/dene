require "application_system_test_case"

class BilgilersTest < ApplicationSystemTestCase
  setup do
    @bilgiler = bilgilers(:one)
  end

  test "visiting the index" do
    visit bilgilers_url
    assert_selector "h1", text: "Bilgilers"
  end

  test "creating a Bilgiler" do
    visit bilgilers_url
    click_on "New Bilgiler"

    fill_in "Aciklama", with: @bilgiler.aciklama
    click_on "Create Bilgiler"

    assert_text "Bilgiler was successfully created"
    click_on "Back"
  end

  test "updating a Bilgiler" do
    visit bilgilers_url
    click_on "Edit", match: :first

    fill_in "Aciklama", with: @bilgiler.aciklama
    click_on "Update Bilgiler"

    assert_text "Bilgiler was successfully updated"
    click_on "Back"
  end

  test "destroying a Bilgiler" do
    visit bilgilers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bilgiler was successfully destroyed"
  end
end
