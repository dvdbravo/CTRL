require "application_system_test_case"

class EdetallesTest < ApplicationSystemTestCase
  setup do
    @edetalle = edetalles(:one)
  end

  test "visiting the index" do
    visit edetalles_url
    assert_selector "h1", text: "Edetalles"
  end

  test "creating a Edetalle" do
    visit edetalles_url
    click_on "New Edetalle"

    fill_in "Cantidad", with: @edetalle.cantidad
    fill_in "Capturoentrada", with: @edetalle.capturoentrada
    fill_in "Capturofactura", with: @edetalle.capturofactura
    fill_in "Cliente", with: @edetalle.cliente
    fill_in "Docto", with: @edetalle.docto
    fill_in "Fecha", with: @edetalle.fecha
    fill_in "Importe", with: @edetalle.importe
    fill_in "Linea", with: @edetalle.linea
    fill_in "Longdesc", with: @edetalle.longdesc
    fill_in "Marca", with: @edetalle.marca
    fill_in "Modelo", with: @edetalle.modelo
    fill_in "Nobultos", with: @edetalle.nobultos
    fill_in "Noparte", with: @edetalle.noparte
    fill_in "Nosec", with: @edetalle.nosec
    fill_in "Numero", with: @edetalle.numero
    fill_in "Origen", with: @edetalle.origen
    fill_in "Pesototal", with: @edetalle.pesototal
    fill_in "Precio", with: @edetalle.precio
    fill_in "Reviso", with: @edetalle.reviso
    fill_in "Serie", with: @edetalle.serie
    fill_in "Shortdesc", with: @edetalle.shortdesc
    fill_in "Um", with: @edetalle.um
    fill_in "Umc", with: @edetalle.umc
    fill_in "Upc", with: @edetalle.upc
    click_on "Create Edetalle"

    assert_text "Edetalle was successfully created"
    click_on "Back"
  end

  test "updating a Edetalle" do
    visit edetalles_url
    click_on "Edit", match: :first

    fill_in "Cantidad", with: @edetalle.cantidad
    fill_in "Capturoentrada", with: @edetalle.capturoentrada
    fill_in "Capturofactura", with: @edetalle.capturofactura
    fill_in "Cliente", with: @edetalle.cliente
    fill_in "Docto", with: @edetalle.docto
    fill_in "Fecha", with: @edetalle.fecha
    fill_in "Importe", with: @edetalle.importe
    fill_in "Linea", with: @edetalle.linea
    fill_in "Longdesc", with: @edetalle.longdesc
    fill_in "Marca", with: @edetalle.marca
    fill_in "Modelo", with: @edetalle.modelo
    fill_in "Nobultos", with: @edetalle.nobultos
    fill_in "Noparte", with: @edetalle.noparte
    fill_in "Nosec", with: @edetalle.nosec
    fill_in "Numero", with: @edetalle.numero
    fill_in "Origen", with: @edetalle.origen
    fill_in "Pesototal", with: @edetalle.pesototal
    fill_in "Precio", with: @edetalle.precio
    fill_in "Reviso", with: @edetalle.reviso
    fill_in "Serie", with: @edetalle.serie
    fill_in "Shortdesc", with: @edetalle.shortdesc
    fill_in "Um", with: @edetalle.um
    fill_in "Umc", with: @edetalle.umc
    fill_in "Upc", with: @edetalle.upc
    click_on "Update Edetalle"

    assert_text "Edetalle was successfully updated"
    click_on "Back"
  end

  test "destroying a Edetalle" do
    visit edetalles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Edetalle was successfully destroyed"
  end
end
