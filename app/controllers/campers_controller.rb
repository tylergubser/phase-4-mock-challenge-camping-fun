class CampersController < ApplicationController

    def index
        camper = Camper.all
        render json: camper
    end

    def show 
        camper = Camper.find(params[:id])
        render json: camper
    end
end
