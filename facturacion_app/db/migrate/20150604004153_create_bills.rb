class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :bill_number, index: true
      t.string :bill_control, index: true
      t.date :issue_date
      t.date :payment_date
      t.string :client_rif
      t.string :client_name
      t.string :client_adress
      t.string :client_phone
      t.string :client_email
      t.text :detail
      t.integer :quantity
      t.integer :unit_price
      t.integer :tax
      t.integer :bill_total
      t.references :service, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.references :transaction, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
