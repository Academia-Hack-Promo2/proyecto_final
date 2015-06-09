class ProviderBill < ActiveRecord::Base
	
	validates :status, presence: true, inclusion: { in: %w(pendiente cancelada),
    message: "is not a valid status" }
	validates :bill_number, numericality: true, presence: true
	validates :amount, numericality: true, presence: true

  belongs_to :provider
end
