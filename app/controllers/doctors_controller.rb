class DoctorsController < ApplicationController
  before_action :authenticate_doctor!

  def index
    @category = Category.find(params[:category_id])
    @doctors = @category.doctors
  end

  def profile 
    @active_appointments = current_doctor.appointments.active.includes(:user)
    @resolved_appointments = current_doctor.appointments.resolved.includes(:user)
  end
end
