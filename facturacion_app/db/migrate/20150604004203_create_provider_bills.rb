class CreateProviderBills < ActiveRecord::Migration
  def change
    create_table :provider_bills do |t|
      t.integer :bill_number, null:false
      t.string :description 
      t.integer :amount, null:false
      t.string :status, null:false,  limit: 9

      t.references :provider, index: true, foreign_key: true
      t.references :transaction, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
