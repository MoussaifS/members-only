class UsersController < ApplicationController
    
    def index
        if false  
            render 'done'
        else 
            render 'index'
        end
    end
    

    
    def show
        @user = User.find(params[:id])
    end

    # def test
    #     render 'done'
    # end

    def create 
        @user = User.new(user_params)
        if @user.save 
            redirect_to @user
        # elsif User.find_by(name: @user.name)
        #     render "login"
        else 
            render 'new'
        end
    end

    def new 
        @user = User.new
    end

    private
    def user_params
        params.require(:user).permit(:name , :password)
    end
end
