class TargetsController < ApplicationController
        before_action :authorize


    def index
        user = User.find(session[:user_id])
        if(user)
            targets = Target.all
            render json: targets, status: :ok
        else
            render_unaothorized_response
        end 

    end

    def create 
        target = Target.create!(target_params)
        render json: target, status: :created
    end 

    



    private
    def target_params
        params.permit(:title,:description)
    end

    def render_unaothorized_response
        render json: {error: "Please Login first"}, status: :unauthorized
    end 

    def authorize
        return render json: {error: "Not Authorized"}, status: :unauthorized unless session.include? :user_id
    end
    
end
