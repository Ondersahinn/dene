require "application_system_test_case"

class ProjelersTest < ApplicationSystemTestCase
  setup do
    @projeler = projelers(:one)
  end

  test "visiting the index" do
    visit projelers_url
    assert_selector "h1", text: "Projelers"
  end

  test "creating a Projeler" do
    visit projelers_url
    click_on "New Projeler"

    fill_in "Aciklama", with: @projeler.aciklama
    fill_in "Baslik", with: @projeler.baslik
    fill_in "Konu", with: @projeler.konu
    fill_in "Tarih", with: @projeler.tarih
    click_on "Create Projeler"

    assert_text "Projeler was successfully created"
    click_on "Back"
  end

  test "updating a Projeler" do
    visit projelers_url
    click_on "Edit", match: :first

    fill_in "Aciklama", with: @projeler.aciklama
    fill_in "Baslik", with: @projeler.baslik
    fill_in "Konu", with: @projeler.konu
    fill_in "Tarih", with: @projeler.tarih
    click_on "Update Projeler"

    assert_text "Projeler was successfully updated"
    click_on "Back"
  end

  test "destroying a Projeler" do
    visit projelers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projeler was successfully destroyed"
  end
end
