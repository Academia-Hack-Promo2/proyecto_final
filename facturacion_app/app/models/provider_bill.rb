class ProviderBill < ActiveRecord::Base
	enum status: {cancelada: 1, pendiente: 0}

	validates :bill_number, numericality: true, presence: true
	validates :amount, numericality: true, presence: true
	validates :payment_number, numericality: true, presence: true

  belongs_to :provider
end
