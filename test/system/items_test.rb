require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    fill_in "Alto", with: @item.alto
    fill_in "Ancho", with: @item.ancho
    fill_in "Categoria", with: @item.categoria
    fill_in "Codigo", with: @item.codigo
    fill_in "Costo", with: @item.costo
    fill_in "Descripcion", with: @item.descripcion
    fill_in "Idmarca", with: @item.idmarca
    fill_in "Largo", with: @item.largo
    fill_in "Longdesc", with: @item.longdesc
    fill_in "Paisorigen", with: @item.paisorigen
    fill_in "Peso", with: @item.peso
    fill_in "Sku", with: @item.sku
    fill_in "Subcategoria", with: @item.subcategoria
    fill_in "Umedida", with: @item.umedida
    fill_in "Umedidaa", with: @item.umedidaa
    fill_in "Umedidal", with: @item.umedidal
    fill_in "Umedidav", with: @item.umedidav
    fill_in "Umedidaw", with: @item.umedidaw
    fill_in "Upc", with: @item.upc
    fill_in "Vendedor", with: @item.vendedor
    fill_in "Volumen", with: @item.volumen
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit items_url
    click_on "Edit", match: :first

    fill_in "Alto", with: @item.alto
    fill_in "Ancho", with: @item.ancho
    fill_in "Categoria", with: @item.categoria
    fill_in "Codigo", with: @item.codigo
    fill_in "Costo", with: @item.costo
    fill_in "Descripcion", with: @item.descripcion
    fill_in "Idmarca", with: @item.idmarca
    fill_in "Largo", with: @item.largo
    fill_in "Longdesc", with: @item.longdesc
    fill_in "Paisorigen", with: @item.paisorigen
    fill_in "Peso", with: @item.peso
    fill_in "Sku", with: @item.sku
    fill_in "Subcategoria", with: @item.subcategoria
    fill_in "Umedida", with: @item.umedida
    fill_in "Umedidaa", with: @item.umedidaa
    fill_in "Umedidal", with: @item.umedidal
    fill_in "Umedidav", with: @item.umedidav
    fill_in "Umedidaw", with: @item.umedidaw
    fill_in "Upc", with: @item.upc
    fill_in "Vendedor", with: @item.vendedor
    fill_in "Volumen", with: @item.volumen
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
