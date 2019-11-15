require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "creating a Cliente" do
    visit clientes_url
    click_on "New Cliente"

    fill_in "Agente", with: @cliente.agente
    fill_in "Calleynumero", with: @cliente.calleynumero
    fill_in "Ciudad", with: @cliente.ciudad
    fill_in "Clientedesde", with: @cliente.clientedesde
    fill_in "Codigo", with: @cliente.codigo
    fill_in "Codigopostal", with: @cliente.codigopostal
    fill_in "Colonia", with: @cliente.colonia
    fill_in "Contacto", with: @cliente.contacto
    fill_in "Correoe", with: @cliente.correoe
    fill_in "Correoec", with: @cliente.correoec
    fill_in "Delegacion", with: @cliente.delegacion
    fill_in "Estado", with: @cliente.estado
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Pais", with: @cliente.pais
    fill_in "Puesto", with: @cliente.puesto
    fill_in "Rfc", with: @cliente.rfc
    fill_in "Rsocial", with: @cliente.rsocial
    fill_in "Telefono", with: @cliente.telefono
    fill_in "Telefonoc", with: @cliente.telefonoc
    fill_in "Tipoactividad", with: @cliente.tipoactividad
    fill_in "Ultimatransaccion", with: @cliente.ultimatransaccion
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "updating a Cliente" do
    visit clientes_url
    click_on "Edit", match: :first

    fill_in "Agente", with: @cliente.agente
    fill_in "Calleynumero", with: @cliente.calleynumero
    fill_in "Ciudad", with: @cliente.ciudad
    fill_in "Clientedesde", with: @cliente.clientedesde
    fill_in "Codigo", with: @cliente.codigo
    fill_in "Codigopostal", with: @cliente.codigopostal
    fill_in "Colonia", with: @cliente.colonia
    fill_in "Contacto", with: @cliente.contacto
    fill_in "Correoe", with: @cliente.correoe
    fill_in "Correoec", with: @cliente.correoec
    fill_in "Delegacion", with: @cliente.delegacion
    fill_in "Estado", with: @cliente.estado
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Pais", with: @cliente.pais
    fill_in "Puesto", with: @cliente.puesto
    fill_in "Rfc", with: @cliente.rfc
    fill_in "Rsocial", with: @cliente.rsocial
    fill_in "Telefono", with: @cliente.telefono
    fill_in "Telefonoc", with: @cliente.telefonoc
    fill_in "Tipoactividad", with: @cliente.tipoactividad
    fill_in "Ultimatransaccion", with: @cliente.ultimatransaccion
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Cliente" do
    visit clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cliente was successfully destroyed"
  end
end
