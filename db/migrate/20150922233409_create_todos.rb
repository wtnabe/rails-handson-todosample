class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.datetime :due
      t.text :note

      t.timestamps null: false
    end
  end
end
