require 'test_helper'

class BibliotecasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @biblioteca = bibliotecas(:one)
  end

  test "should get index" do
    get bibliotecas_url
    assert_response :success
  end

  test "should get new" do
    get new_biblioteca_url
    assert_response :success
  end

  test "should create biblioteca" do
    assert_difference('Biblioteca.count') do
      post bibliotecas_url, params: { biblioteca: { autor: @biblioteca.autor, estado: @biblioteca.estado, fecha_devolucion: @biblioteca.fecha_devolucion, fecha_prestado: @biblioteca.fecha_prestado, titulo: @biblioteca.titulo } }
    end

    assert_redirected_to biblioteca_url(Biblioteca.last)
  end

  test "should show biblioteca" do
    get biblioteca_url(@biblioteca)
    assert_response :success
  end

  test "should get edit" do
    get edit_biblioteca_url(@biblioteca)
    assert_response :success
  end

  test "should update biblioteca" do
    patch biblioteca_url(@biblioteca), params: { biblioteca: { autor: @biblioteca.autor, estado: @biblioteca.estado, fecha_devolucion: @biblioteca.fecha_devolucion, fecha_prestado: @biblioteca.fecha_prestado, titulo: @biblioteca.titulo } }
    assert_redirected_to biblioteca_url(@biblioteca)
  end

  test "should destroy biblioteca" do
    assert_difference('Biblioteca.count', -1) do
      delete biblioteca_url(@biblioteca)
    end

    assert_redirected_to bibliotecas_url
  end
end
