require 'test_helper'

class RetosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get retos_index_url
    assert_response :success
  end

end
