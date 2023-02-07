class Intern < ActiveRecord::Base
  belongs_to :doctor

  validates :doctor, presence: true
end