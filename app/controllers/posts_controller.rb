class PostsController < ApplicationController
    def index
        @post = Post.all
    end

    def new
        @user = User.first.id
        @post = Post.new
        
    end

    def create 
        @post = Post.new(post_params)
        if @post.save 
            render 'index'
        end
    end


    private 
    def post_params
        params.require(:post).permit(:title , :body , @user)
    end
end
