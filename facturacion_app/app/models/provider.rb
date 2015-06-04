class Provider < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 5,maximum: 40}
	validates :rif, presence: true, length: {in: 10..15}, uniqueness: true
	validates :phone, presence: true, length: {in: 7..11}
	validates :email, presence: true, length: {in: 5..30}, uniqueness: true

end
