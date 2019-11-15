require "application_system_test_case"

class TactividadsTest < ApplicationSystemTestCase
  setup do
    @tactividad = tactividads(:one)
  end

  test "visiting the index" do
    visit tactividads_url
    assert_selector "h1", text: "Tactividads"
  end

  test "creating a Tactividad" do
    visit tactividads_url
    click_on "New Tactividad"

    fill_in "Codigo", with: @tactividad.codigo
    fill_in "Descripcion", with: @tactividad.descripcion
    click_on "Create Tactividad"

    assert_text "Tactividad was successfully created"
    click_on "Back"
  end

  test "updating a Tactividad" do
    visit tactividads_url
    click_on "Edit", match: :first

    fill_in "Codigo", with: @tactividad.codigo
    fill_in "Descripcion", with: @tactividad.descripcion
    click_on "Update Tactividad"

    assert_text "Tactividad was successfully updated"
    click_on "Back"
  end

  test "destroying a Tactividad" do
    visit tactividads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tactividad was successfully destroyed"
  end
end
