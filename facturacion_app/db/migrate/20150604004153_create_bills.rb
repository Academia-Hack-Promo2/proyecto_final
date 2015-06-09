class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :bill_number, limit: 10, null: false, index: true
      t.string :bill_control, limit: 10, null: false, index: true
      t.date :emition_date, null: true
      t.date :payment_date, null: true
      t.string :client_rif, limit: 15, null: false
      t.string :client_name, limit: 40, null: false
      t.string :client_adress, null: true
      t.string :client_phone, limit: 11, null: false
      t.string :client_email, limit: 30, null: true
      t.string :detail
      t.integer :quantity, null: false
      t.integer :unit_price, null: false
      t.integer :tax, null: false
      t.integer :bill_total, null: false
      t.string :status, null:false, limit: 9

      t.references :service, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
