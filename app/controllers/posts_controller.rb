class PostsController < ApplicationController
  before_action :require_login, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.includes(:user).order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      flash[:notice] = "Post created successfully."
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end


  def show
    @comments = @post.comments.where(parent_comment_id: nil)
    @comment = Comment.new
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, :image)
  end
end
