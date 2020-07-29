require "application_system_test_case"

class RiskByBrandsTest < ApplicationSystemTestCase
  setup do
    @risk_by_brand = risk_by_brands(:one)
  end

  test "visiting the index" do
    visit risk_by_brands_url
    assert_selector "h1", text: "Risk By Brands"
  end

  test "creating a Risk by brand" do
    visit risk_by_brands_url
    click_on "New Risk By Brand"

    fill_in "Battery risk", with: @risk_by_brand.battery_risk
    fill_in "Brand", with: @risk_by_brand.brand
    fill_in "Screen risk", with: @risk_by_brand.screen_risk
    fill_in "Total loss risk", with: @risk_by_brand.total_loss_risk
    click_on "Create Risk by brand"

    assert_text "Risk by brand was successfully created"
    click_on "Back"
  end

  test "updating a Risk by brand" do
    visit risk_by_brands_url
    click_on "Edit", match: :first

    fill_in "Battery risk", with: @risk_by_brand.battery_risk
    fill_in "Brand", with: @risk_by_brand.brand
    fill_in "Screen risk", with: @risk_by_brand.screen_risk
    fill_in "Total loss risk", with: @risk_by_brand.total_loss_risk
    click_on "Update Risk by brand"

    assert_text "Risk by brand was successfully updated"
    click_on "Back"
  end

  test "destroying a Risk by brand" do
    visit risk_by_brands_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Risk by brand was successfully destroyed"
  end
end
