require "test_helper"

class CarteirasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carteira = carteiras(:one)
  end

  test "should get index" do
    get carteiras_url
    assert_response :success
  end

  test "should get new" do
    get new_carteira_url
    assert_response :success
  end

  test "should create carteira" do
    assert_difference("Carteira.count") do
      post carteiras_url, params: { carteira: {  } }
    end

    assert_redirected_to carteira_url(Carteira.last)
  end

  test "should show carteira" do
    get carteira_url(@carteira)
    assert_response :success
  end

  test "should get edit" do
    get edit_carteira_url(@carteira)
    assert_response :success
  end

  test "should update carteira" do
    patch carteira_url(@carteira), params: { carteira: {  } }
    assert_redirected_to carteira_url(@carteira)
  end

  test "should destroy carteira" do
    assert_difference("Carteira.count", -1) do
      delete carteira_url(@carteira)
    end

    assert_redirected_to carteiras_url
  end
end
