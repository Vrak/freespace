require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get carts_show_url
    assert_response :success
  end

  test "should get purchased" do
    get carts_purchased_url
    assert_response :success
  end

end
