class Student < ActiveRecord::Base
  enum :active: {active: 0, inactive: 1 }

  validates :name, presence: true, length: {minimum: 3, maximum: 15}
  validates :l_name, presence: true, length: {minimum: 3, maximum: 15}
  validates :identification, presence: true, length: {minimum: 3, maximum: 11}
  validates :phone, limit: 11, presence: true
  validates :email, limit: 30, presence: true, length: {in: 5..30}

  belongs_to :client
end
