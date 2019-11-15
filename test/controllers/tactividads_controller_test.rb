require 'test_helper'

class TactividadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tactividad = tactividads(:one)
  end

  test "should get index" do
    get tactividads_url
    assert_response :success
  end

  test "should get new" do
    get new_tactividad_url
    assert_response :success
  end

  test "should create tactividad" do
    assert_difference('Tactividad.count') do
      post tactividads_url, params: { tactividad: { codigo: @tactividad.codigo, descripcion: @tactividad.descripcion } }
    end

    assert_redirected_to tactividad_url(Tactividad.last)
  end

  test "should show tactividad" do
    get tactividad_url(@tactividad)
    assert_response :success
  end

  test "should get edit" do
    get edit_tactividad_url(@tactividad)
    assert_response :success
  end

  test "should update tactividad" do
    patch tactividad_url(@tactividad), params: { tactividad: { codigo: @tactividad.codigo, descripcion: @tactividad.descripcion } }
    assert_redirected_to tactividad_url(@tactividad)
  end

  test "should destroy tactividad" do
    assert_difference('Tactividad.count', -1) do
      delete tactividad_url(@tactividad)
    end

    assert_redirected_to tactividads_url
  end
end
