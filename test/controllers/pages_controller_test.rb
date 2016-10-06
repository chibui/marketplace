require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get landing" do
    get pages_landing_url
    assert_response :success
  end

  test "should get buyerhome" do
    get pages_buyerhome_url
    assert_response :success
  end

  test "should get sellerhomebuyer" do
    get pages_sellerhomebuyer_url
    assert_response :success
  end

  test "should get buyerfaq" do
    get pages_buyerfaq_url
    assert_response :success
  end

  test "should get sellerfaq" do
    get pages_sellerfaq_url
    assert_response :success
  end

end
