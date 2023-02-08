module ApplicationHelper
  def resource
    current_user || current_doctor
  end
end
