class DoctorsController < ApplicationController
  before_action :authenticate_doctor!

  def index
    @category = Category.find(params[:category_id])
    @doctors = @category.doctors
  end

  def profile 
    @appointments = current_doctor.appointments
  end
end
