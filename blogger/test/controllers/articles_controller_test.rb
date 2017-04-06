require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new article" do
    get :new
    assert_response :success
  end

  test "should show article" do
    article = articles(:one)
    get article_url(article)
    assert_response :success
  end

  test "should post create article" do
    #post :create, @article[:title] => "test"
    assert_response :success
  end

  test "should destroy article" do
    article = articles(:one)
    assert_difference('Article.count', -1) do
      delete article_url(article)
    end
    
    assert_redirected_to articles_path
  end

  test "should update article" do
    article = articles(:one)

    patch article_url(article), params: { article: { title: "updated" } }

    assert_redirected_to article_path(article)
    # Reload association to fetch updated data and assert that title is updated
    article.reload
    assert_equal "updated", article.title
  end
end
