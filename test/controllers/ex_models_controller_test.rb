require 'test_helper'

class ExModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ex_model = ex_models(:one)
  end

  test "should get index" do
    get ex_models_url
    assert_response :success
  end

  test "should get new" do
    get new_ex_model_url
    assert_response :success
  end

  test "should create ex_model" do
    assert_difference('ExModel.count') do
      post ex_models_url, params: { ex_model: { brand: @ex_model.brand, model: @ex_model.model, price: @ex_model.price, risk_by_brand_id: @ex_model.risk_by_brand_id } }
    end

    assert_redirected_to ex_model_url(ExModel.last)
  end

  test "should show ex_model" do
    get ex_model_url(@ex_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_ex_model_url(@ex_model)
    assert_response :success
  end

  test "should update ex_model" do
    patch ex_model_url(@ex_model), params: { ex_model: { brand: @ex_model.brand, model: @ex_model.model, price: @ex_model.price, risk_by_brand_id: @ex_model.risk_by_brand_id } }
    assert_redirected_to ex_model_url(@ex_model)
  end

  test "should destroy ex_model" do
    assert_difference('ExModel.count', -1) do
      delete ex_model_url(@ex_model)
    end

    assert_redirected_to ex_models_url
  end
end
