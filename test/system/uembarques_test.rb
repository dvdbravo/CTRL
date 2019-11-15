require "application_system_test_case"

class UembarquesTest < ApplicationSystemTestCase
  setup do
    @uembarque = uembarques(:one)
  end

  test "visiting the index" do
    visit uembarques_url
    assert_selector "h1", text: "Uembarques"
  end

  test "creating a Uembarque" do
    visit uembarques_url
    click_on "New Uembarque"

    fill_in "Codigo", with: @uembarque.codigo
    fill_in "Descripcion", with: @uembarque.descripcion
    click_on "Create Uembarque"

    assert_text "Uembarque was successfully created"
    click_on "Back"
  end

  test "updating a Uembarque" do
    visit uembarques_url
    click_on "Edit", match: :first

    fill_in "Codigo", with: @uembarque.codigo
    fill_in "Descripcion", with: @uembarque.descripcion
    click_on "Update Uembarque"

    assert_text "Uembarque was successfully updated"
    click_on "Back"
  end

  test "destroying a Uembarque" do
    visit uembarques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Uembarque was successfully destroyed"
  end
end
