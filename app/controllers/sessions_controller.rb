class SessionsController < ApplicationController

    def new
    end
    
    def create   
        user = User.find_by_name(params[:email])   
        if user 
          session[:user_id] = user.id   
          redirect_to root_url, notice: 'Logged in!'   
        else   
          render :new   
        end   
    end   


    def destroy
        @user = User.find(params[:id])
        if @user.destroy
            flash[:success] = 'Object was successfully deleted.'
            redirect_to users_url
        else
            flash[:error] = 'Something went wrong'
            redirect_to users_url
        end
    end
    
end
