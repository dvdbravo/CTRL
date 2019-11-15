require "application_system_test_case"

class DestinosTest < ApplicationSystemTestCase
  setup do
    @destino = destinos(:one)
  end

  test "visiting the index" do
    visit destinos_url
    assert_selector "h1", text: "Destinos"
  end

  test "creating a Destino" do
    visit destinos_url
    click_on "New Destino"

    fill_in "Codigo", with: @destino.codigo
    fill_in "Estado", with: @destino.estado
    fill_in "Nombre", with: @destino.nombre
    fill_in "Pais", with: @destino.pais
    click_on "Create Destino"

    assert_text "Destino was successfully created"
    click_on "Back"
  end

  test "updating a Destino" do
    visit destinos_url
    click_on "Edit", match: :first

    fill_in "Codigo", with: @destino.codigo
    fill_in "Estado", with: @destino.estado
    fill_in "Nombre", with: @destino.nombre
    fill_in "Pais", with: @destino.pais
    click_on "Update Destino"

    assert_text "Destino was successfully updated"
    click_on "Back"
  end

  test "destroying a Destino" do
    visit destinos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Destino was successfully destroyed"
  end
end
