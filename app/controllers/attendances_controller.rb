class AttendancesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid,with: :render_unprocessable_entity
    before_action :authorize

    def index
        user = User.find(session[:user_id])
        if(user)
            attendances = Attendance.all
            render json: attendances, status: :ok
        else
            render_unaothorized_response
        end 
            
    end

    def create
        attendance = Attendance.create!(attendance_params)
        render json: attendance, status: :created
    end  

   


   


    private
    def attendance_params
        params.permit(:date,:timeIn,:timeOut,:activities,:sign,:checkedBy)
    end

    def render_unprocessable_data(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end

    def render_unaothorized_response
        render json: {error: "Please Login first"}, status: :unauthorized
    end


    def authorize
        return render json: {error: "Not Authorized"}, status: :unauthorized unless session.include? :user_id
    end

end
