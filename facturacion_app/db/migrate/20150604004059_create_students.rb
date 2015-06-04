class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :l_name
      t.string :identification, index: true
      t.string :adress
      t.string :phone
      t.string :email
      t.integer :active
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
