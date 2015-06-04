class Student < ActiveRecord::Base
  enum active: {active: 1, inactive: 0}

  validates :name, presence: true, length: {minimum: 3, maximum: 15}
  validates :l_name, presence: true, length: {minimum: 3, maximum: 15}
  validates :identification, presence: true, length: {minimum: 3, maximum: 11}, uniqueness: true
  validates :phone, length: {in: 7..11}, presence: true, uniqueness: true
  validates :email, presence: true, length: {in: 5..30}, uniqueness: true

  belongs_to :client
end
