class CreateNotes < ActiveRecord::Migration
  def up
    remove_column :todos, :note

    create_table :notes do |t|
      t.references :todo, index: true, foreign_key: true
      t.text :body

      t.timestamps null: false
    end
  end

  def down
    add_column :todos, :note, :text
    drop_table :notes
  end
end
