class AttendancesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid,with: :render_unprocessable_entity

    def index
        @user = User.find_by(email: params[:email])
        if(@user)
            attendances = Attendance.all
            render json: attendances, status: :ok
        else
            render_unaothorized_response
        end 
            
    end

    def create
        attendancez = @user.attendance.create(attendance_params)
        # ActionCable.server.broadcast("attendances", attendance)
        render json: attendancez, status: :created
        
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


end
