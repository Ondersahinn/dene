require 'test_helper'

class ProjelersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projeler = projelers(:one)
  end

  test "should get index" do
    get projelers_url
    assert_response :success
  end

  test "should get new" do
    get new_projeler_url
    assert_response :success
  end

  test "should create projeler" do
    assert_difference('Projeler.count') do
      post projelers_url, params: { projeler: { aciklama: @projeler.aciklama, baslik: @projeler.baslik, konu: @projeler.konu, tarih: @projeler.tarih } }
    end

    assert_redirected_to projeler_url(Projeler.last)
  end

  test "should show projeler" do
    get projeler_url(@projeler)
    assert_response :success
  end

  test "should get edit" do
    get edit_projeler_url(@projeler)
    assert_response :success
  end

  test "should update projeler" do
    patch projeler_url(@projeler), params: { projeler: { aciklama: @projeler.aciklama, baslik: @projeler.baslik, konu: @projeler.konu, tarih: @projeler.tarih } }
    assert_redirected_to projeler_url(@projeler)
  end

  test "should destroy projeler" do
    assert_difference('Projeler.count', -1) do
      delete projeler_url(@projeler)
    end

    assert_redirected_to projelers_url
  end
end
