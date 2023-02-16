class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :phone_number, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments
  has_many :users, through: :appointments #to do add distinct
  has_and_belongs_to_many :categories
  def quick_appointment_link
    "<a href=appointments/new?doctor_id=#{id}>#{email}</a>".html_safe
  end
  

  def email_required?
  false
  end

  def email_changed?
  false
  end
end