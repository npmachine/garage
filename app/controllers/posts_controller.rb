# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    @post.update(post_params)
    redirect_to @post
  end

  def create
    # @post = Post.new(post_params)

    # @post.save

    @post = current_user.posts.create(post_params)
    redirect_to post_path(@post)
  rescue ActiveRecord::RecordInvalid => e
    flash.now[:error] = e.message
    render :new
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
