class AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
    render json: @attendances
  end

  def create
  end
end
