class UsersController < ApplicationController 
   before_action :authenticate_user!
   def profile
      @categories =  Category.all
   end
end
