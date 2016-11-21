class PostsController < ApplicationController
	def index
		@post =Post.all.order('created_at DESC')
	end

	def new 
	end
	def create
	@post = Post.new(req_params)
	@post.save

	redirect_to @post
    end
    def show
		@post =Post.find(params[:id])
		
	end
	private
	def req_params
		params.require(:pos).permit(:title, :body)
	end

	
end
