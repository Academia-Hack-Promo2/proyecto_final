class CreateProviderBills < ActiveRecord::Migration
  def change
    create_table :provider_bills do |t|
      t.integer :bill_number, null:false, index: true
      t.text :description 
      t.integer :amount, null:false
      t.integer :status, null:false, index: true, limit: 1
      t.integer :payment_number, null:true, index: true
     
      t.references :provider, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
