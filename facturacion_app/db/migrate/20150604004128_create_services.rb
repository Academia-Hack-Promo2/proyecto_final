class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name, limit: 40, null: false
      t.string :details, null: false
      t.integer :amount, null: false

      t.timestamps null: false
    end
  end
end
