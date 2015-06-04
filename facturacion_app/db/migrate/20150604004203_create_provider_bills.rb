class CreateProviderBills < ActiveRecord::Migration
  def change
    create_table :provider_bills do |t|
      t.integer :bill_number, null:false, index: true
      t.text :description 
      t.integer :amount, null:false
      t.integer :status, null:false, index: true
      t.integer :payment_number, null:false, index: true
      t.references :provider, null:false, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
