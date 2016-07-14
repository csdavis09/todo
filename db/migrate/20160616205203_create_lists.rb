class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
