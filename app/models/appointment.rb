class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  scope :active, -> { where("active = true") }
  scope :resolved, -> { where("active = false") }
end
