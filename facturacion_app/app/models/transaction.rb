class Transaction < ActiveRecord::Base
  validates :transaction_number, presence: true, uniqueness: true, length: {is: 20}
  validates :transaction_total, numericality: true
  validates :bill_number, numericality: true, uniqueness: true
end
