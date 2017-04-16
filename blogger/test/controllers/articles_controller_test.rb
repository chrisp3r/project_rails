require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @article = articles(:one)
  end

  def teardown
    @article = nil
  end

  test "should get root" do
    get :index
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should show article" do
    # article = articles(:one) # what does :one do?
    # get :show, article: { id: 1 } # 302 response

    # @article = Article.first # uses def setup
    # not the same as :id => 1 but why?
    get :show, :id => @article.id
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article" do
    #assert_difference('Article.count') do
       #article articles_path, params: { article: { title: @article.title, body: @article.body } }
    #end
    #assert_redirect_to article_path(Article.last)
  
    # Unclear if this is actually working?
    assert_difference('Article.count', +1) do # +1 doesn't change test?
      post :create, article: { body: 'body', title: 'hello world' }
    end

    assert_redirected_to article_path(Article.last)
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, :id => @article.id
    end

    assert_redirected_to articles_path
  end

  test "should get edit" do
    get :edit, :id => @article.id
    assert_response :success
  end

  test "should update article" do
    #example
    #put :update, :id => @post.id, :post => { }
    #assert_redirected_to post_path(assigns(:post))
    put :update, :id => @article.id, :article => { title: "updated by test" }
    assert_redirected_to article_url(assigns(:article)) # just :article doesn't pass :id to url
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
