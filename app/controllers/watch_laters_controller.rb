class WatchLatersController < ApplicationController
    def index
        allwatchlaters = WatchLater.all
        userid = params[:user_id]
        # myvideos = allwatchlaters.select  |m| {
        #     byebug
        #     m.user_id == params[:user_id] }
        # byebug
        render json: allwatchlaters.to_json()
    end
  
    def create
        WatchLater.create(strong_params)
    end

    def showall
        render json: WatchLater.all
    end

    private
    def strong_params
        params.require(:watch_later).permit(:user_id, :url, :saved)
      end
 
end
