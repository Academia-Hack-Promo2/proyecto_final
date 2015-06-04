class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :transaction_number, index: true
      t.integer :transaction_total
      t.date :transaction_date
      t.integer :bill_number, index: true

      t.timestamps null: false
    end
  end
end
