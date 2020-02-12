class WatchLatersController < ApplicationController
    def index
        allwatchlaters = WatchLater.all
        render json: allwatchlaters.to_json()
    end
  
    def create
        WatchLater.create(strong_params)
    end

    private
    def strong_params
        params.require(:watch_later).permit(:user_id, :url)
      end
 
end
