class UsersController < ApplicationController

    def new
        @User=user.new
    end 

    def create 
        @User=User.create params[:id]
        redirect_to user_path
    end 

end
