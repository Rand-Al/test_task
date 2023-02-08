class ApplicationController < ActionController::Base

  def user
    current_user || current_doctor
  end

  def after_sign_in_path_for(user)
    profile_users_path
  end
  def after_sign_in_path_for(user)
    profile_doctors_path
  end
end
