class Transaction < ActiveRecord::Base
  validates :transactions_number, presence: true, uniqueness: true
  validates :transactions_total, numericality: true 
  validates :bill_number, numericality: true, uniqueness: true
end
