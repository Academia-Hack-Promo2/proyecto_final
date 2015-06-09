class Bill < ActiveRecord::Base
	validates :status, presence: true, inclusion: { in: %w(pendiente cancelada),
    message: "is not a valid status" }
	
	validates :bill_number, length: {in: 7..10}, presence: true, uniqueness: true
	validates :bill_control, length: {in: 7..10}, presence: true, uniqueness: true
	validates :payment_date, presence: true
	validates :client_rif, length: {in: 10..15}, presence: true
	validates :client_name, length: {in: 5..40}, presence: true
	validates :client_phone, length: {in: 7..11}, presence: true
	validates :client_email, length: {in: 5..30}, presence: true
	validates :quantity, numericality: true
	validates :unit_price, numericality: true
	validates :tax, numericality: true
	validates :bill_total, numericality: true
	
	belongs_to :service
	belongs_to :client
end
