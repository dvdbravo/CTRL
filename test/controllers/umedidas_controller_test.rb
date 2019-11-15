require 'test_helper'

class UmedidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @umedida = umedidas(:one)
  end

  test "should get index" do
    get umedidas_url
    assert_response :success
  end

  test "should get new" do
    get new_umedida_url
    assert_response :success
  end

  test "should create umedida" do
    assert_difference('Umedida.count') do
      post umedidas_url, params: { umedida: { codigo: @umedida.codigo, descripcion: @umedida.descripcion } }
    end

    assert_redirected_to umedida_url(Umedida.last)
  end

  test "should show umedida" do
    get umedida_url(@umedida)
    assert_response :success
  end

  test "should get edit" do
    get edit_umedida_url(@umedida)
    assert_response :success
  end

  test "should update umedida" do
    patch umedida_url(@umedida), params: { umedida: { codigo: @umedida.codigo, descripcion: @umedida.descripcion } }
    assert_redirected_to umedida_url(@umedida)
  end

  test "should destroy umedida" do
    assert_difference('Umedida.count', -1) do
      delete umedida_url(@umedida)
    end

    assert_redirected_to umedidas_url
  end
end
