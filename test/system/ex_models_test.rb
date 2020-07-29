require "application_system_test_case"

class ExModelsTest < ApplicationSystemTestCase
  setup do
    @ex_model = ex_models(:one)
  end

  test "visiting the index" do
    visit ex_models_url
    assert_selector "h1", text: "Ex Models"
  end

  test "creating a Ex model" do
    visit ex_models_url
    click_on "New Ex Model"

    fill_in "Brand", with: @ex_model.brand
    fill_in "Model", with: @ex_model.model
    fill_in "Price", with: @ex_model.price
    fill_in "Risk by brand", with: @ex_model.risk_by_brand_id
    click_on "Create Ex model"

    assert_text "Ex model was successfully created"
    click_on "Back"
  end

  test "updating a Ex model" do
    visit ex_models_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @ex_model.brand
    fill_in "Model", with: @ex_model.model
    fill_in "Price", with: @ex_model.price
    fill_in "Risk by brand", with: @ex_model.risk_by_brand_id
    click_on "Update Ex model"

    assert_text "Ex model was successfully updated"
    click_on "Back"
  end

  test "destroying a Ex model" do
    visit ex_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ex model was successfully destroyed"
  end
end
