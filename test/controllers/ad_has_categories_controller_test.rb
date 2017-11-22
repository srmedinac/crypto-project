require 'test_helper'

class AdHasCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ad_has_category = ad_has_categories(:one)
  end

  test "should get index" do
    get ad_has_categories_url, as: :json
    assert_response :success
  end

  test "should create ad_has_category" do
    assert_difference('AdHasCategory.count') do
      post ad_has_categories_url, params: { ad_has_category: { ad_id: @ad_has_category.ad_id, category_id: @ad_has_category.category_id } }, as: :json
    end

    assert_response 201
  end

  test "should show ad_has_category" do
    get ad_has_category_url(@ad_has_category), as: :json
    assert_response :success
  end

  test "should update ad_has_category" do
    patch ad_has_category_url(@ad_has_category), params: { ad_has_category: { ad_id: @ad_has_category.ad_id, category_id: @ad_has_category.category_id } }, as: :json
    assert_response 200
  end

  test "should destroy ad_has_category" do
    assert_difference('AdHasCategory.count', -1) do
      delete ad_has_category_url(@ad_has_category), as: :json
    end

    assert_response 204
  end
end
