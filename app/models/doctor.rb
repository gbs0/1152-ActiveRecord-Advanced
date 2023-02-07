class Doctor < ActiveRecord::Base
  # Associations
  has_many :interns, dependent: :destroy
  has_many :consultations, dependent: :destroy
  has_many :patients, through: :consultations
  
  # Validations
  validates :last_name, presence: true
end