class UsersController < ApplicationController 
   before_action :authenticate_user!
   def profile
      @categories =  Category.all
      @appointments = current_user.appointments
   end
   
end
