require 'test_helper'

class EdetallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @edetalle = edetalles(:one)
  end

  test "should get index" do
    get edetalles_url
    assert_response :success
  end

  test "should get new" do
    get new_edetalle_url
    assert_response :success
  end

  test "should create edetalle" do
    assert_difference('Edetalle.count') do
      post edetalles_url, params: { edetalle: { cantidad: @edetalle.cantidad, capturoentrada: @edetalle.capturoentrada, capturofactura: @edetalle.capturofactura, cliente: @edetalle.cliente, docto: @edetalle.docto, fecha: @edetalle.fecha, importe: @edetalle.importe, linea: @edetalle.linea, longdesc: @edetalle.longdesc, marca: @edetalle.marca, modelo: @edetalle.modelo, nobultos: @edetalle.nobultos, noparte: @edetalle.noparte, nosec: @edetalle.nosec, numero: @edetalle.numero, origen: @edetalle.origen, pesototal: @edetalle.pesototal, precio: @edetalle.precio, reviso: @edetalle.reviso, serie: @edetalle.serie, shortdesc: @edetalle.shortdesc, um: @edetalle.um, umc: @edetalle.umc, upc: @edetalle.upc } }
    end

    assert_redirected_to edetalle_url(Edetalle.last)
  end

  test "should show edetalle" do
    get edetalle_url(@edetalle)
    assert_response :success
  end

  test "should get edit" do
    get edit_edetalle_url(@edetalle)
    assert_response :success
  end

  test "should update edetalle" do
    patch edetalle_url(@edetalle), params: { edetalle: { cantidad: @edetalle.cantidad, capturoentrada: @edetalle.capturoentrada, capturofactura: @edetalle.capturofactura, cliente: @edetalle.cliente, docto: @edetalle.docto, fecha: @edetalle.fecha, importe: @edetalle.importe, linea: @edetalle.linea, longdesc: @edetalle.longdesc, marca: @edetalle.marca, modelo: @edetalle.modelo, nobultos: @edetalle.nobultos, noparte: @edetalle.noparte, nosec: @edetalle.nosec, numero: @edetalle.numero, origen: @edetalle.origen, pesototal: @edetalle.pesototal, precio: @edetalle.precio, reviso: @edetalle.reviso, serie: @edetalle.serie, shortdesc: @edetalle.shortdesc, um: @edetalle.um, umc: @edetalle.umc, upc: @edetalle.upc } }
    assert_redirected_to edetalle_url(@edetalle)
  end

  test "should destroy edetalle" do
    assert_difference('Edetalle.count', -1) do
      delete edetalle_url(@edetalle)
    end

    assert_redirected_to edetalles_url
  end
end
