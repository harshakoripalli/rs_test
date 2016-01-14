class Pet < ActiveRecord::Base
  has_many :appointments
  belongs_to :customer
  validates :type_of_pet, :breed, :age, :weight, presence: true
  validates :type_of_pet, inclusion: { in: %w(dog cat bird), message: " should be only dog or cat or bird" }
  validates :name, length:{maximum: 35}
  validates :breed, length:{maximum: 35}
end
