class Customer < ActiveRecord::Base
  has_many :pets
  validates :name, length:{maximum: 35}
  validates :name, presence: true
end
