require 'test_helper'

class HotelsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get hotels_show_url
    assert_response :success
  end

end
