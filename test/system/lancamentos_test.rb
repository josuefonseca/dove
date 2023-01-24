require "application_system_test_case"

class LancamentosTest < ApplicationSystemTestCase
  setup do
    @lancamento = lancamentos(:one)
  end

  test "visiting the index" do
    visit lancamentos_url
    assert_selector "h1", text: "Lancamentos"
  end

  test "should create lancamento" do
    visit lancamentos_url
    click_on "New lancamento"

    click_on "Create Lancamento"

    assert_text "Lancamento was successfully created"
    click_on "Back"
  end

  test "should update Lancamento" do
    visit lancamento_url(@lancamento)
    click_on "Edit this lancamento", match: :first

    click_on "Update Lancamento"

    assert_text "Lancamento was successfully updated"
    click_on "Back"
  end

  test "should destroy Lancamento" do
    visit lancamento_url(@lancamento)
    click_on "Destroy this lancamento", match: :first

    assert_text "Lancamento was successfully destroyed"
  end
end
