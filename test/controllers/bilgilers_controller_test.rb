require 'test_helper'

class BilgilersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bilgiler = bilgilers(:one)
  end

  test "should get index" do
    get bilgilers_url
    assert_response :success
  end

  test "should get new" do
    get new_bilgiler_url
    assert_response :success
  end

  test "should create bilgiler" do
    assert_difference('Bilgiler.count') do
      post bilgilers_url, params: { bilgiler: { aciklama: @bilgiler.aciklama } }
    end

    assert_redirected_to bilgiler_url(Bilgiler.last)
  end

  test "should show bilgiler" do
    get bilgiler_url(@bilgiler)
    assert_response :success
  end

  test "should get edit" do
    get edit_bilgiler_url(@bilgiler)
    assert_response :success
  end

  test "should update bilgiler" do
    patch bilgiler_url(@bilgiler), params: { bilgiler: { aciklama: @bilgiler.aciklama } }
    assert_redirected_to bilgiler_url(@bilgiler)
  end

  test "should destroy bilgiler" do
    assert_difference('Bilgiler.count', -1) do
      delete bilgiler_url(@bilgiler)
    end

    assert_redirected_to bilgilers_url
  end
end
