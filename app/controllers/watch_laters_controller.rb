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
        newele = WatchLater.create(strong_params)
        render json: newele.to_json()
    end

    def showall
        render json: WatchLater.all
    end

    def destroy
       record = WatchLater.find(params[:id])
       record.destroy
    end

    private
    def strong_params
        params.require(:watch_later).permit(:user_id, :url, :saved, :title)
      end
 
end
