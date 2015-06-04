class User < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 3, maximum: 15}
	validates :l_name, presence: true, length: {minimum: 3, maximum: 15}
	validates :phone, presence: true, length: {minimum: 5, maximum: 11}
	validates :email, presence: true, length: {minimum: 5, maximum: 30}, uniqueness: true
	validates :u_name, presence: true, length: {minimum: 5, maximum: 15}, uniqueness: true
	validates :u_passwd, presence: true, length: {minimum: 5,maximum: 20}
end
