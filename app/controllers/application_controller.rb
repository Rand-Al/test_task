class ApplicationController < ActionController::Base

  def user
    current_user || current_doctor
  end

end
