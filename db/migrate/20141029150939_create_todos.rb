class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.boolean :done, default: false
      t.string :title
      t.string :session_id, null: false
      t.timestamps
    end
  end
end
