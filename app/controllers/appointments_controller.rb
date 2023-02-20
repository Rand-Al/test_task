class AppointmentsController < ApplicationController
  before_action :authenticate_user!, except: :show
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

  def show 
    @appointment = Appointment.find(params[:id])
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to profile_users_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:description, :doctor_id)
  end
end
