require 'test_helper'

class AttentionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attention = attentions(:one)
  end

  test "should get index" do
    get attentions_url, as: :json
    assert_response :success
  end

  test "should create attention" do
    assert_difference('Attention.count') do
      post attentions_url, params: { attention: { city_id: @attention.city_id, description: @attention.description } }, as: :json
    end

    assert_response 201
  end

  test "should show attention" do
    get attention_url(@attention), as: :json
    assert_response :success
  end

  test "should update attention" do
    patch attention_url(@attention), params: { attention: { city_id: @attention.city_id, description: @attention.description } }, as: :json
    assert_response 200
  end

  test "should destroy attention" do
    assert_difference('Attention.count', -1) do
      delete attention_url(@attention), as: :json
    end

    assert_response 204
  end
end
