class AttendancesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid,with: :render_unprocessable_entity

    def index
        att = @current_user.attendance
        render json: att, status: :ok         
    end 

    def create
        new_attendances = Attendance.create!(attendance_params)
        ActionCable.server.broadcast("attendances", new_attendances)
        render json: new_attendances, status: :created
        
    end  
     
    def show
        attendances = Attendance.where(user_id:  @current_user)
        render json: attendances, status: :ok
    end

   

   

   
# jeff id = 10 

# Attendance.create(user_id: "10",date: "21/09/2002", timeIn: "0800",timeOut: "1700",activities: "coding",sign: "G.G",checkedBy: "JN")
   
# :user_id,:date,:timeIn,:timeOut,:activities,:sign,:checkedBy

    private
    def attendance_params
        params.permit(:user_id,:date,:timeIn,:timeOut,:activities,:sign,:checkedBy)
    end

    def render_unprocessable_data(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end

    def render_unaothorized_response
        render json: {error: "Please Login first"}, status: :unauthorized
    end


end
