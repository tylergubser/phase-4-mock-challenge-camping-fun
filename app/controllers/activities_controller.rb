class ActivitiesController < ApplicationController
    
    def index
        activity = Activity.all
        render json: activity
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        head :no_content
    rescue ActiveRecord::RecordNotFound 
        render json: {error: "Activity not found"}, status: :not_found
    end
end
