class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name, index: true
      t.string :details
      t.integer :amount

      t.timestamps null: false
    end
  end
end
