module ApplicationHelper
  def resource
    current_user || current_doctor
  end
  def full_name(user) 
    "#{user.first_name} #{user.last_name}"
  end
end
