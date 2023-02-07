class Patient < ActiveRecord::Base
  has_many :consultations, dependent: :destroy
  has_many :doctors, through: :consultations
end