require 'test_helper'

class PricingControllerTest < ActionDispatch::IntegrationTest
  test "should get eggs" do
    get pricing_eggs_url
    assert_response :success
  end

end
