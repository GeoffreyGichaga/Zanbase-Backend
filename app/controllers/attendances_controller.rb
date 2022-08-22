class AttendancesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid,with: :render_unprocessable_entity


    def index
        attendances = Attendance.all
        render json: attendances, status: :ok
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

end
