require "application_system_test_case"

class SubcategoriaTest < ApplicationSystemTestCase
  setup do
    @subcategorium = subcategoria(:one)
  end

  test "visiting the index" do
    visit subcategoria_url
    assert_selector "h1", text: "Subcategoria"
  end

  test "creating a Subcategorium" do
    visit subcategoria_url
    click_on "New Subcategorium"

    fill_in "Codigo", with: @subcategorium.codigo
    fill_in "Descripcion", with: @subcategorium.descripcion
    click_on "Create Subcategorium"

    assert_text "Subcategorium was successfully created"
    click_on "Back"
  end

  test "updating a Subcategorium" do
    visit subcategoria_url
    click_on "Edit", match: :first

    fill_in "Codigo", with: @subcategorium.codigo
    fill_in "Descripcion", with: @subcategorium.descripcion
    click_on "Update Subcategorium"

    assert_text "Subcategorium was successfully updated"
    click_on "Back"
  end

  test "destroying a Subcategorium" do
    visit subcategoria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subcategorium was successfully destroyed"
  end
end
