require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get adminhome" do
    get :adminhome
    assert_response :success
  end

end
