class DepartmentsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid,with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found



    def index
        departments =  Department.all
        render json: departments, status: :ok 
    end 

    def create
        @department = Department.create!(deps_params)
        render json: @department, status: :created 

    end 

    def show 
        @department = Department.find(params[:name])
        render json: @department, status: :ok 
    end







    private 

    # Checking parameters sent 
    def deps_params
        params.permit(:name,:organisation)
    end 



    # Invalid data Rejection message/response error
    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end 

    # For Not Found Info Rejection message/response error
    def render_not_found(invalid)
        render json: { error : invalid.record.errors}, status: :not_found
    end

    

end
