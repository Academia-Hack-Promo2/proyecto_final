class Service < ActiveRecord::Base
	validates :name, length: {in: 5..30}, presence: true
	validates :details, presence: true
	validates :amount, numericality: true, presence: true
	end
end
