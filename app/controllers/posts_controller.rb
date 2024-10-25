class PostsController < ApplicationController
  def index
    @blog_posts = Post.all
  end

  def show
    @blog_post = Post.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    # caso ocorra o erro do active record nao encontrar redireciona para a pagina principal
    redirect_to root_path
  end
end
