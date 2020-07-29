require 'test_helper'

class RiskByBrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @risk_by_brand = risk_by_brands(:one)
  end

  test "should get index" do
    get risk_by_brands_url
    assert_response :success
  end

  test "should get new" do
    get new_risk_by_brand_url
    assert_response :success
  end

  test "should create risk_by_brand" do
    assert_difference('RiskByBrand.count') do
      post risk_by_brands_url, params: { risk_by_brand: { battery_risk: @risk_by_brand.battery_risk, brand: @risk_by_brand.brand, screen_risk: @risk_by_brand.screen_risk, total_loss_risk: @risk_by_brand.total_loss_risk } }
    end

    assert_redirected_to risk_by_brand_url(RiskByBrand.last)
  end

  test "should show risk_by_brand" do
    get risk_by_brand_url(@risk_by_brand)
    assert_response :success
  end

  test "should get edit" do
    get edit_risk_by_brand_url(@risk_by_brand)
    assert_response :success
  end

  test "should update risk_by_brand" do
    patch risk_by_brand_url(@risk_by_brand), params: { risk_by_brand: { battery_risk: @risk_by_brand.battery_risk, brand: @risk_by_brand.brand, screen_risk: @risk_by_brand.screen_risk, total_loss_risk: @risk_by_brand.total_loss_risk } }
    assert_redirected_to risk_by_brand_url(@risk_by_brand)
  end

  test "should destroy risk_by_brand" do
    assert_difference('RiskByBrand.count', -1) do
      delete risk_by_brand_url(@risk_by_brand)
    end

    assert_redirected_to risk_by_brands_url
  end
end
