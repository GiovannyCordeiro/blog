class PostsController < ApplicationController
  def index
    @blog_posts = Post.all
  end
end
