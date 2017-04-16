require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get about" do
  	get '/about'
  	assert_response :success
    assert_select "title", "About"
  end

  test "should get services" do
  	get '/services'
  	assert_response :success
    assert_select "title", "Services"
  end

  test "should get contact" do
  	get '/contact'
  	assert_response :success
    assert_select "title", "Contact"
  end
end
