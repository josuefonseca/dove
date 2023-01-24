require "application_system_test_case"

class CarteirasTest < ApplicationSystemTestCase
  setup do
    @carteira = carteiras(:one)
  end

  test "visiting the index" do
    visit carteiras_url
    assert_selector "h1", text: "Carteiras"
  end

  test "should create carteira" do
    visit carteiras_url
    click_on "New carteira"

    click_on "Create Carteira"

    assert_text "Carteira was successfully created"
    click_on "Back"
  end

  test "should update Carteira" do
    visit carteira_url(@carteira)
    click_on "Edit this carteira", match: :first

    click_on "Update Carteira"

    assert_text "Carteira was successfully updated"
    click_on "Back"
  end

  test "should destroy Carteira" do
    visit carteira_url(@carteira)
    click_on "Destroy this carteira", match: :first

    assert_text "Carteira was successfully destroyed"
  end
end
