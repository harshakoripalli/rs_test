class Doctor < ActiveRecord::Base
  has_many :appointments
  validates :name, length:{maximum: 35}
  validates :zip, length:{maximum: 5}
  validates :name, :years_in_practice, presence: true
  validates :years_in_practice, inclusion: { in: 1..100 }
end
