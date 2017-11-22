require 'test_helper'

class CityHasAdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @city_has_ad = city_has_ads(:one)
  end

  test "should get index" do
    get city_has_ads_url, as: :json
    assert_response :success
  end

  test "should create city_has_ad" do
    assert_difference('CityHasAd.count') do
      post city_has_ads_url, params: { city_has_ad: { ad_id: @city_has_ad.ad_id, city_id: @city_has_ad.city_id } }, as: :json
    end

    assert_response 201
  end

  test "should show city_has_ad" do
    get city_has_ad_url(@city_has_ad), as: :json
    assert_response :success
  end

  test "should update city_has_ad" do
    patch city_has_ad_url(@city_has_ad), params: { city_has_ad: { ad_id: @city_has_ad.ad_id, city_id: @city_has_ad.city_id } }, as: :json
    assert_response 200
  end

  test "should destroy city_has_ad" do
    assert_difference('CityHasAd.count', -1) do
      delete city_has_ad_url(@city_has_ad), as: :json
    end

    assert_response 204
  end
end
