class PostsController < ApplicationController
   def index
        @post = Post.all
        @user = Post.all
    end

    # def show 
    #     @post = Post.where(user_id: params[:id])
    #     @user =   User.find(params[:id])
    # end

    def new
        @post = Post.new
        
    end

    def create 
        @post = Post.new(post_params)
        @post.user_id = current_user.id
        if @post.save 
            redirect_to root_path
        end
    end


    private 
    def post_params
        params.require(:post).permit(:title , :body )
    end
end
