class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  def new
    @appointment = Appointment.new 
    @doctors = Category.find(params[:category_id]).doctors 
    
  end
  def create
    redirect_to root if current_doctor
    @appointment = user.appointments.new(appointment_params)
    if @appointment.save
      redirect_to profile_users_path 
    else
      render :new
    end
  end
  def destroy
  end

  private

  def appointment_params
    params.require(:appointment).permit(:description, :doctor_id)
  end
end
