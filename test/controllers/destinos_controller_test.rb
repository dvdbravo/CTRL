require 'test_helper'

class DestinosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @destino = destinos(:one)
  end

  test "should get index" do
    get destinos_url
    assert_response :success
  end

  test "should get new" do
    get new_destino_url
    assert_response :success
  end

  test "should create destino" do
    assert_difference('Destino.count') do
      post destinos_url, params: { destino: { codigo: @destino.codigo, estado: @destino.estado, nombre: @destino.nombre, pais: @destino.pais } }
    end

    assert_redirected_to destino_url(Destino.last)
  end

  test "should show destino" do
    get destino_url(@destino)
    assert_response :success
  end

  test "should get edit" do
    get edit_destino_url(@destino)
    assert_response :success
  end

  test "should update destino" do
    patch destino_url(@destino), params: { destino: { codigo: @destino.codigo, estado: @destino.estado, nombre: @destino.nombre, pais: @destino.pais } }
    assert_redirected_to destino_url(@destino)
  end

  test "should destroy destino" do
    assert_difference('Destino.count', -1) do
      delete destino_url(@destino)
    end

    assert_redirected_to destinos_url
  end
end
