class UsersController < ApplicationController

    def new
        @user=User.new
    end 

    def create 
        @User=User.create user_params
        if user.valid?
            session[:user_id]=user.id
            # redirect_to user_path
        else 
            flash[:errors]=user.error.full_messages
            redirect_to new_user_path
        end
    end 

    private 
    def user_params
        params.require(:user).permit(:name,:email,:password_digest)
    end 

end
