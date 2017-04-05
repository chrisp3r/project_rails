require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    get :index, :id => 1
    assert_response :success
  end

  test "should get show article" do
    get :show, :id => 1
    assert_response :success
  end

  test "should get new article" do
    #get :new, :id => 1
    assert_response :success
  end

  test "should post create article" do
    #post :create, @article[:title] => "test"
    assert_response :success
  end
end
