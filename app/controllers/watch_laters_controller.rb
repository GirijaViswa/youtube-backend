class WatchLatersController < ApplicationController
    def index
        allwatchlaters = WatchLater.all
        render json: allwatchlaters.to_json()
    end
  
    def create
        byebug
        WatchLater.create(url:params[:url],user_id:params[:user_id])
  
    end
 
end
