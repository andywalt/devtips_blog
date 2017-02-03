class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
  	@posts = Post.all.order("created_at DESC")
  end

  def new
  	@post = current_user.posts.build
  end

  def create
  	@post = current_user.posts.build(post_params)

  	if @post.save
  		redirect_to @post
  	else
  		render 'new'
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @post.update(post_params)
  		redirect_to @post
  	else
  		render 'edit'
  	end
  end


  def destroy
  	@post.destroy
  	redirect_to root_path
  end

  def upvote
    @post = Post.find(params[:id])
    @post.liked_by current_user
    redirect_to :back
  end

  private

  def find_post
  	@post = Post.find(params[ :id])
  end

  def post_params
  	params.require(:post).permit(:title, :body, :image)
  end

  def after_sign_out_path_for(resource_or_scope)
    redirect_to root_path
  end
end

