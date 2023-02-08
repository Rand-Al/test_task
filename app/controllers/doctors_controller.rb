class DoctorsController < ApplicationController
  before_action :authenticate_user!

  def index
    @category = Category.find(params[:category_id])
    @doctors = @category.doctors
  end
end
