class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null:false, limit: 15
      t.string :l_name, null:false, limit: 15
      t.string :identification, limit: 11, index: true, null:false
      t.string :adress
      t.string :phone, null:false, limit: 11
      t.string :email, null:false, limit: 30
      t.string :u_name, index: true, null:false, limit: 15
      t.string :u_passwd, null:false, limit: 20

      t.timestamps null: false
    end
  end
end
