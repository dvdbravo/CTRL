require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post items_url, params: { item: { alto: @item.alto, ancho: @item.ancho, categoria: @item.categoria, codigo: @item.codigo, costo: @item.costo, descripcion: @item.descripcion, idmarca: @item.idmarca, largo: @item.largo, longdesc: @item.longdesc, paisorigen: @item.paisorigen, peso: @item.peso, sku: @item.sku, subcategoria: @item.subcategoria, umedida: @item.umedida, umedidaa: @item.umedidaa, umedidal: @item.umedidal, umedidav: @item.umedidav, umedidaw: @item.umedidaw, upc: @item.upc, vendedor: @item.vendedor, volumen: @item.volumen } }
    end

    assert_redirected_to item_url(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { alto: @item.alto, ancho: @item.ancho, categoria: @item.categoria, codigo: @item.codigo, costo: @item.costo, descripcion: @item.descripcion, idmarca: @item.idmarca, largo: @item.largo, longdesc: @item.longdesc, paisorigen: @item.paisorigen, peso: @item.peso, sku: @item.sku, subcategoria: @item.subcategoria, umedida: @item.umedida, umedidaa: @item.umedidaa, umedidal: @item.umedidal, umedidav: @item.umedidav, umedidaw: @item.umedidaw, upc: @item.upc, vendedor: @item.vendedor, volumen: @item.volumen } }
    assert_redirected_to item_url(@item)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete item_url(@item)
    end

    assert_redirected_to items_url
  end
end
