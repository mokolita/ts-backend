class HomeController < ApplicationController
    before_action :authenticate_user!
    skip_before_action :authenticate_user!, only: [:user]

    def index
       render json: {msg: 'Welcome to Troubleshoot'}
    end 

    def profile
        user = current_user
        render_resource(user, with: [:locations])
    end 

    def user
        user = current_user
        render_resource(user)
    end 

    

end 