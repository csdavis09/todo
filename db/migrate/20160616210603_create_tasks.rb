class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.references :list, index: true, foreign_key: true
      t.datetime :due_at
      t.datetime :completed_at

      t.timestamps null: false
    end
  end
end
