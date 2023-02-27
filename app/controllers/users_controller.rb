class UsersController < ApplicationController 
   before_action :authenticate_user!
   def profile
      @categories =  Category.all
      @appointments = current_user.appointments
      @active_appointments = current_user.appointments.active.includes(:doctor)
      @resolved_appointments = current_user.appointments.resolved.includes(:doctor)
   end
   
end
