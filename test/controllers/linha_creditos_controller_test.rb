require "test_helper"

class LinhaCreditosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linha_credito = linha_creditos(:one)
  end

  test "should get index" do
    get linha_creditos_url
    assert_response :success
  end

  test "should get new" do
    get new_linha_credito_url
    assert_response :success
  end

  test "should create linha_credito" do
    assert_difference("LinhaCredito.count") do
      post linha_creditos_url, params: { linha_credito: {  } }
    end

    assert_redirected_to linha_credito_url(LinhaCredito.last)
  end

  test "should show linha_credito" do
    get linha_credito_url(@linha_credito)
    assert_response :success
  end

  test "should get edit" do
    get edit_linha_credito_url(@linha_credito)
    assert_response :success
  end

  test "should update linha_credito" do
    patch linha_credito_url(@linha_credito), params: { linha_credito: {  } }
    assert_redirected_to linha_credito_url(@linha_credito)
  end

  test "should destroy linha_credito" do
    assert_difference("LinhaCredito.count", -1) do
      delete linha_credito_url(@linha_credito)
    end

    assert_redirected_to linha_creditos_url
  end
end
