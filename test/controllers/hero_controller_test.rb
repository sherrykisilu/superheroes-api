require "test_helper"

class HeroControllerTest < ActionDispatch::IntegrationTest
  test "should get powers" do
    get hero_powers_url
    assert_response :success
  end
end
