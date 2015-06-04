class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :l_name
      t.string :identification, index: true
      t.string :adress
      t.string :phone
      t.string :email
      t.string :u_name, index: true
      t.string :u_passwd

      t.timestamps null: false
    end
  end
end
