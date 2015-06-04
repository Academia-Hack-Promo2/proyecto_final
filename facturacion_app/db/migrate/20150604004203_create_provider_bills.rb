class CreateProviderBills < ActiveRecord::Migration
  def change
    create_table :provider_bills do |t|
      t.integer :bill_number, index: true
      t.text :description
      t.integer :amount
      t.integer :status, index: true
      t.integer :payment_number, index: true
      t.references :provider, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
