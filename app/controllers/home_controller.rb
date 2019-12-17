class HomeController < ApplicationController
    before_action :authenticate_user!

    def index
       render json: 
    end 

    def profile
        user = current_user
        render_resource(user, with: [:locations])
    end 

end 