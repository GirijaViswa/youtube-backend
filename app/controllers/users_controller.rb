class UsersController < ApplicationController
    def index
        allusers = User.all
        render json: allusers
    end
  
    def show
        myuser = User.find(params[:id])
        render json: {id: myuser.id , name: myuser.username,  
        categories: myuser.categories.as_json(:except => [ :created_at, :updated_at ]), 
        watch_laters: myuser.watch_laters.as_json(:except => [ :created_at, :updated_at ])}.to_json
    end
    
    def create
        myuser = User.create(username:params[:username])
    end
 
end
