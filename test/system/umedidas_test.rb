require "application_system_test_case"

class UmedidasTest < ApplicationSystemTestCase
  setup do
    @umedida = umedidas(:one)
  end

  test "visiting the index" do
    visit umedidas_url
    assert_selector "h1", text: "Umedidas"
  end

  test "creating a Umedida" do
    visit umedidas_url
    click_on "New Umedida"

    fill_in "Codigo", with: @umedida.codigo
    fill_in "Descripcion", with: @umedida.descripcion
    click_on "Create Umedida"

    assert_text "Umedida was successfully created"
    click_on "Back"
  end

  test "updating a Umedida" do
    visit umedidas_url
    click_on "Edit", match: :first

    fill_in "Codigo", with: @umedida.codigo
    fill_in "Descripcion", with: @umedida.descripcion
    click_on "Update Umedida"

    assert_text "Umedida was successfully updated"
    click_on "Back"
  end

  test "destroying a Umedida" do
    visit umedidas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Umedida was successfully destroyed"
  end
end
