require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      article articles_path, params: { article: { title: @article.title, body: @article.body } }
    end
    assert_redirect_to article_path(Article.last)
  end
end

=begin
  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { content: @post.content, name: @post.name, title: @post.title } }
    end

    assert_redirected_to post_url(Post.last)
  end
=end

#post posts_url, params: { post: { content: @post.content, name: @post.name, title: @post.title } }
#assert_redirected_to post_url(Post.last)
