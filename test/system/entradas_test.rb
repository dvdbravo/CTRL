require "application_system_test_case"

class EntradasTest < ApplicationSystemTestCase
  setup do
    @entrada = entradas(:one)
  end

  test "visiting the index" do
    visit entradas_url
    assert_selector "h1", text: "Entradas"
  end

  test "creating a Entrada" do
    visit entradas_url
    click_on "New Entrada"

    fill_in "Cantidad", with: @entrada.cantidad
    fill_in "Cliente", with: @entrada.cliente
    fill_in "Descripcion", with: @entrada.descripcion
    fill_in "Destino", with: @entrada.destino
    fill_in "Docto", with: @entrada.docto
    fill_in "Fecha", with: @entrada.fecha
    fill_in "Numero", with: @entrada.numero
    fill_in "Peso", with: @entrada.peso
    fill_in "Proveedor", with: @entrada.proveedor
    fill_in "Tdocto", with: @entrada.tdocto
    fill_in "Ubicacion", with: @entrada.ubicacion
    fill_in "Uembarque", with: @entrada.uembarque
    fill_in "Um", with: @entrada.um
    fill_in "Volumen", with: @entrada.volumen
    click_on "Create Entrada"

    assert_text "Entrada was successfully created"
    click_on "Back"
  end

  test "updating a Entrada" do
    visit entradas_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @entrada.cantidad
    fill_in "Cliente", with: @entrada.cliente
    fill_in "Descripcion", with: @entrada.descripcion
    fill_in "Destino", with: @entrada.destino
    fill_in "Docto", with: @entrada.docto
    fill_in "Fecha", with: @entrada.fecha
    fill_in "Numero", with: @entrada.numero
    fill_in "Peso", with: @entrada.peso
    fill_in "Proveedor", with: @entrada.proveedor
    fill_in "Tdocto", with: @entrada.tdocto
    fill_in "Ubicacion", with: @entrada.ubicacion
    fill_in "Uembarque", with: @entrada.uembarque
    fill_in "Um", with: @entrada.um
    fill_in "Volumen", with: @entrada.volumen
    click_on "Update Entrada"

    assert_text "Entrada was successfully updated"
    click_on "Back"
  end

  test "destroying a Entrada" do
    visit entradas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entrada was successfully destroyed"
  end
end
