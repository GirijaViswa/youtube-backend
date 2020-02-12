class UsersController < ApplicationController
    def index
        allusers = User.all
        render json: allusers
    end
  
    def show
        myuser = User.find(params[:id])
        render json: {id: myuser.id , name: myuser.username,  categories: myuser.categories, watch_laters: myuser.watch_laters}
    end
    
    def create
        myuser = User.create(username:params[:username])
    end
 
end
