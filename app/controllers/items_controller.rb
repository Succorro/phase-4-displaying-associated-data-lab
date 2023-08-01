class ItemsController < ApplicationController
    def index 
        render json: Item.all, only: [:id,:name,:description,:price ], include: {user: {except: [:created_at, :updated_at]}}
    end 
end
