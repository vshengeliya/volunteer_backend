class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
    render json: @attendances
  end

  def create
    attendance = Attendance.create(attendance_params)
    render json: attendance
  end

  private

  def attendance_params
    params.require(:attendance).permit(:user_id, :event_id, :rating)
  end
end
