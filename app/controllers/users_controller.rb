class UsersController < ApplicationController
    wrap_parameters format: []
    rescue_from ActiveRecord::RecordInvalid,with: :render_unprocessable_entity

    def create
        user = User.create!(user_params)
        render json: user , status: :created
    end 

    # def show
    #     current_logged_user = User.find(session[:user_id])
    #     render json: current_logged_user, status: :ok
    # end 

    def show
        current_user = User.find(session[:user_id])
        render json: current_user
    end 

     

  


  

    private
    def user_params
        params.permit(:firstname,:lastname,:email,:username,:role,:supervisor,:password)
    end 

   

    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end 
    
end
