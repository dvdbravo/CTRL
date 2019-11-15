require 'test_helper'

class ClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_cliente_url
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post clientes_url, params: { cliente: { agente: @cliente.agente, calleynumero: @cliente.calleynumero, ciudad: @cliente.ciudad, clientedesde: @cliente.clientedesde, codigo: @cliente.codigo, codigopostal: @cliente.codigopostal, colonia: @cliente.colonia, contacto: @cliente.contacto, correoe: @cliente.correoe, correoec: @cliente.correoec, delegacion: @cliente.delegacion, estado: @cliente.estado, nombre: @cliente.nombre, pais: @cliente.pais, puesto: @cliente.puesto, rfc: @cliente.rfc, rsocial: @cliente.rsocial, telefono: @cliente.telefono, telefonoc: @cliente.telefonoc, tipoactividad: @cliente.tipoactividad, ultimatransaccion: @cliente.ultimatransaccion } }
    end

    assert_redirected_to cliente_url(Cliente.last)
  end

  test "should show cliente" do
    get cliente_url(@cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_url(@cliente)
    assert_response :success
  end

  test "should update cliente" do
    patch cliente_url(@cliente), params: { cliente: { agente: @cliente.agente, calleynumero: @cliente.calleynumero, ciudad: @cliente.ciudad, clientedesde: @cliente.clientedesde, codigo: @cliente.codigo, codigopostal: @cliente.codigopostal, colonia: @cliente.colonia, contacto: @cliente.contacto, correoe: @cliente.correoe, correoec: @cliente.correoec, delegacion: @cliente.delegacion, estado: @cliente.estado, nombre: @cliente.nombre, pais: @cliente.pais, puesto: @cliente.puesto, rfc: @cliente.rfc, rsocial: @cliente.rsocial, telefono: @cliente.telefono, telefonoc: @cliente.telefonoc, tipoactividad: @cliente.tipoactividad, ultimatransaccion: @cliente.ultimatransaccion } }
    assert_redirected_to cliente_url(@cliente)
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete cliente_url(@cliente)
    end

    assert_redirected_to clientes_url
  end
end
