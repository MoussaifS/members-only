class PostsController < ApplicationController
    def index
        @post = Post.all
        @user = Post.all
    end

    def new
        @post = Post.new
        
    end

    def create 
        @post = Post.new(post_params)
        @post.user_id = User.first.id
        if @post.save 
            render 'index'
        end
    end


    private 
    def post_params
        @user = User.first.id
        params.require(:post).permit(:title , :body )
    end
end
