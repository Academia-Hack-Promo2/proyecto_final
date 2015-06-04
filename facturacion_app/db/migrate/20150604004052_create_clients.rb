class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, limit: 40, null:false
      t.string :rif, index: true, null:false, limit: 15
      t.string :address
      t.string :phone, limit: 11, null:false
      t.string :email, limit: 30, null:false

      t.timestamps null: false
    end
  end
end
