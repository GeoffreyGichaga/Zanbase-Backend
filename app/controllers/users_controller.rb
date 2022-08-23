class UsersController < ApplicationController
    wrap_parameters format: []
    rescue_from ActiveRecord::RecordInvalid,with: :render_unprocessable_entity
    before_action :authorize
    skip_before_action :authorize, only: [:create]

    
    def create
        user = User.create(user_params)
        session[:user_id] = user.id
        render json: user , status: :created

    end 

    def show
        current_logged_user = User.find(session[:user_id])
        render json: current_logged_user, status: :ok
    end 

     

  


  

    private
    def user_params
        params.permit(:firstname,:lastname,:email,:username,:role,:supervisor,:password)
    end 

   

    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end 

    def authorize
        return render json: {error: "Not Authorized"}, status: :unauthorized unless session.include? :user_id
    end
end
