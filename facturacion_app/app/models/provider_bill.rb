class ProviderBill < ActiveRecord::Base
	validates :bill_number, numericality: true, presence: true
	validates :amount, numericality: true, presence: true
	validates :payment_number, numericality: true, presence: true
	validates :provider, numericality: true, presence: true

  belongs_to :provider
end
