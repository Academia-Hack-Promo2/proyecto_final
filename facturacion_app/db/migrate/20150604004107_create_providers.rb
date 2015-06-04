class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name, limit: 40, null: false
      t.string :rif, limit: 15, index: true, null:false
      t.string :adress
      t.string :phone, limit: 11, null:false
      t.string :email, limit: 30, null: false

      t.timestamps null: false
    end
  end
end
