require "application_system_test_case"

class LinhaCreditosTest < ApplicationSystemTestCase
  setup do
    @linha_credito = linha_creditos(:one)
  end

  test "visiting the index" do
    visit linha_creditos_url
    assert_selector "h1", text: "Linha creditos"
  end

  test "should create linha credito" do
    visit linha_creditos_url
    click_on "New linha credito"

    click_on "Create Linha credito"

    assert_text "Linha credito was successfully created"
    click_on "Back"
  end

  test "should update Linha credito" do
    visit linha_credito_url(@linha_credito)
    click_on "Edit this linha credito", match: :first

    click_on "Update Linha credito"

    assert_text "Linha credito was successfully updated"
    click_on "Back"
  end

  test "should destroy Linha credito" do
    visit linha_credito_url(@linha_credito)
    click_on "Destroy this linha credito", match: :first

    assert_text "Linha credito was successfully destroyed"
  end
end
