require 'test_helper'

class DetallesOfertaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalles_ofertum = detalles_oferta(:one)
  end

  test "should get index" do
    get detalles_oferta_url
    assert_response :success
  end

  test "should get new" do
    get new_detalles_ofertum_url
    assert_response :success
  end

  test "should create detalles_ofertum" do
    assert_difference('DetallesOfertum.count') do
      post detalles_oferta_url, params: { detalles_ofertum: { anio: @detalles_ofertum.anio, descripcion: @detalles_ofertum.descripcion, nivel_de_idioma: @detalles_ofertum.nivel_de_idioma, otros_beneficios: @detalles_ofertum.otros_beneficios, requisitos: @detalles_ofertum.requisitos, tipo: @detalles_ofertum.tipo, titulo: @detalles_ofertum.titulo, ubicacion: @detalles_ofertum.ubicacion } }
    end

    assert_redirected_to detalles_ofertum_url(DetallesOfertum.last)
  end

  test "should show detalles_ofertum" do
    get detalles_ofertum_url(@detalles_ofertum)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalles_ofertum_url(@detalles_ofertum)
    assert_response :success
  end

  test "should update detalles_ofertum" do
    patch detalles_ofertum_url(@detalles_ofertum), params: { detalles_ofertum: { anio: @detalles_ofertum.anio, descripcion: @detalles_ofertum.descripcion, nivel_de_idioma: @detalles_ofertum.nivel_de_idioma, otros_beneficios: @detalles_ofertum.otros_beneficios, requisitos: @detalles_ofertum.requisitos, tipo: @detalles_ofertum.tipo, titulo: @detalles_ofertum.titulo, ubicacion: @detalles_ofertum.ubicacion } }
    assert_redirected_to detalles_ofertum_url(@detalles_ofertum)
  end

  test "should destroy detalles_ofertum" do
    assert_difference('DetallesOfertum.count', -1) do
      delete detalles_ofertum_url(@detalles_ofertum)
    end

    assert_redirected_to detalles_oferta_url
  end
end
