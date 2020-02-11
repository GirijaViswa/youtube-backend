class CategoriesController < ApplicationController
    def index
        allcategories = Category.all
        render json: allcategories.to_json()
    end 
end
