class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, limit: 15, null:false
      t.string :l_name, limit: 15, null:false
      t.string :adress
      t.string :phone, limit: 11, null:false
      t.string :email, limit: 30, null:false
      t.string :active, limit: 1, null:false

      t.string :identification, limit: 10, null:false, index: true
      t.references :client, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
