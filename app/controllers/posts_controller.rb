class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])

		if @post.save
			redirect_to posts_path, :notice => "Your post was saved"
		else
			redirect_to posts_path, :notice => "Error saving your post"
		end
	end


end
