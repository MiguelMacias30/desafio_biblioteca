require "application_system_test_case"

class BibliotecasTest < ApplicationSystemTestCase
  setup do
    @biblioteca = bibliotecas(:one)
  end

  test "visiting the index" do
    visit bibliotecas_url
    assert_selector "h1", text: "Bibliotecas"
  end

  test "creating a Biblioteca" do
    visit bibliotecas_url
    click_on "New Biblioteca"

    fill_in "Autor", with: @biblioteca.autor
    check "Estado" if @biblioteca.estado
    fill_in "Fecha devolucion", with: @biblioteca.fecha_devolucion
    fill_in "Fecha prestado", with: @biblioteca.fecha_prestado
    fill_in "Titulo", with: @biblioteca.titulo
    click_on "Create Biblioteca"

    assert_text "Biblioteca was successfully created"
    click_on "Back"
  end

  test "updating a Biblioteca" do
    visit bibliotecas_url
    click_on "Edit", match: :first

    fill_in "Autor", with: @biblioteca.autor
    check "Estado" if @biblioteca.estado
    fill_in "Fecha devolucion", with: @biblioteca.fecha_devolucion
    fill_in "Fecha prestado", with: @biblioteca.fecha_prestado
    fill_in "Titulo", with: @biblioteca.titulo
    click_on "Update Biblioteca"

    assert_text "Biblioteca was successfully updated"
    click_on "Back"
  end

  test "destroying a Biblioteca" do
    visit bibliotecas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Biblioteca was successfully destroyed"
  end
end
