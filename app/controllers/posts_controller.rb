class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new
	end

	def create
		@post = Post.create(title: params[:title], description: params[:description])
		redirect_to post_path(@post) #pass instance variable as argument for posts_path
		#this brings us to /posts/:id -- the show page for this new post
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end
end
