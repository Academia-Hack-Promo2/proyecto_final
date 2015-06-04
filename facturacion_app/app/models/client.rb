class Client < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 3, maximum: 40}
	validates :rif, presence: true, length: {minimum: 3, maximum: 15}
	validates :phone, presence: true, length: {minimum: 7, maximum: 11}
	validates :email, presence: true, length: {minimum: 5, maximum: 30}
end
