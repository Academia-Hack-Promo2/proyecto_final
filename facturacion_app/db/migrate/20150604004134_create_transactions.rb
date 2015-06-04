class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :transaction_number, limit: 10, null: false, index: true
      t.integer :transaction_total, null: false
      t.date :transaction_date, null: false
      t.integer :bill_number, null: false, index: true

      t.timestamps null: false
    end
  end
end
