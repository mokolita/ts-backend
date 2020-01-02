class LocationsController < ApplicationController
     before_action :authenticate_user!
     skip_before_action :authenticate_user!, only: [:index]

    def index 
        locations = Location.all
        render json: locations.to_json(include: [:comments] )
    end

    def show
        location = Location.find(params[:id])
        authorize_user_resource(location)
        render_resource(location, with: [:comments])
    end

    def create
        location = Location.new(location_params)
        location.user = current_user
        location.save
        render_resource(location)
    end

    def update
        location = Location.find(params[:id])
        authorize_user_resource(location)
        location.update(location_params)
        render_resource(location)
    end 

    def destroy
        location = location.find(params[:id])
        authorize_user_resource(location)
        location.destroy
        render_resource(location)
    end


    private 

    def location_params
        params.require(:location).permit(:name, :content, :latitude, :longitute)
    end
end
