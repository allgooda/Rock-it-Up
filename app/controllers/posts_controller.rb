class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end


  def create
    post = Post.new(post_params)
    post.user = current_user
      if post.save
        flash[:notice] = "You have successfully added a new Post"
        redirect_to root_path
      else
        render 'new'
      end
    end

  # def show
  #   @list = List.find(params[:id])
  # end


  private

  def post_params
    params.require(:post).permit(:description, :site_found, :img_uri)
  end
end
