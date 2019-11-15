require 'test_helper'

class UembarquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uembarque = uembarques(:one)
  end

  test "should get index" do
    get uembarques_url
    assert_response :success
  end

  test "should get new" do
    get new_uembarque_url
    assert_response :success
  end

  test "should create uembarque" do
    assert_difference('Uembarque.count') do
      post uembarques_url, params: { uembarque: { codigo: @uembarque.codigo, descripcion: @uembarque.descripcion } }
    end

    assert_redirected_to uembarque_url(Uembarque.last)
  end

  test "should show uembarque" do
    get uembarque_url(@uembarque)
    assert_response :success
  end

  test "should get edit" do
    get edit_uembarque_url(@uembarque)
    assert_response :success
  end

  test "should update uembarque" do
    patch uembarque_url(@uembarque), params: { uembarque: { codigo: @uembarque.codigo, descripcion: @uembarque.descripcion } }
    assert_redirected_to uembarque_url(@uembarque)
  end

  test "should destroy uembarque" do
    assert_difference('Uembarque.count', -1) do
      delete uembarque_url(@uembarque)
    end

    assert_redirected_to uembarques_url
  end
end
