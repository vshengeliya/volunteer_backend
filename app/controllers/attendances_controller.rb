class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
    render json: @attendances
  end

  def show
    attendance = Attendance.find(params[:id])
    render json: attendance
  end

  def create
    attendance = Attendance.create(attendance_params)
    render json: attendance
  end


  def update
    attendance = Attendance.find(params[:id])
    attendance.update(attendance_params)
    render json: attendance
  end

  def destroy
    attendance = Attendance.find(params[:id])
    attendance.destroy!
    render json: {}
  end


  private

  def attendance_params
    params.require(:attendance).permit(:user_id, :event_id, :rating)
  end
end
