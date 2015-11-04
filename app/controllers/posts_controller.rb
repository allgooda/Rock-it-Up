class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    if current_user
      post = Post.new(post_params)
      post.user = current_user
        if post.save
          flash[:notice] = "You have successfully added a new Post"
          redirect_to root_path
        else
          render 'new'
        end
    else
      flash[:notice] = "You GOTTA create an account to do that!"
      redirect_to root_path
    end
  end

  # def show
  #   @list = List.find(params[:id])
  # end

  def destroy
   @post = current_user.posts.find(params[:id])
   @post.destroy
   redirect_to profiles_path
  end


  private

  def post_params
    params.require(:post).permit(:description, :site_found, :img_uri)
  end
end
