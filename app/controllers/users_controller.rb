class UsersController < ApplicationController
    def index
        allusers = User.all
        render json: allusers
    end
  
    def show
        myuser = User.find(params[:id])
        byebug
        render json: {id: myuser.id , name: myuser.username, watchLaters: myuser.watchLaters.to_json(), categories: myuser.categories}
    end
    
    def create
        byebug
        myuser = User.create(username:params[:username])
    end
 
end
