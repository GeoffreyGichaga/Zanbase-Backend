class TargetsController < ApplicationController

    def index
        targets = Target.all
        render json: targets, status: :ok
         
    end

    def create 
        target = Target.create!(target_params)
        render json: target, status: :created
    end 

    


    private
    def target_params
        params.permit(:title,:description)
    end

end
