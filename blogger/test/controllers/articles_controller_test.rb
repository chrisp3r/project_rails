require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    get articles_url
    assert_response :success
  end
end
