class Transaction < ActiveRecord::Base
  validates :transactions_number, presence: true, uniqueness: true, lengthh: {is: 20}
  validates :transactions_total, numericality: true, niqueness: true 
  validates :bill_number, numericality: true, uniqueness: true
end
