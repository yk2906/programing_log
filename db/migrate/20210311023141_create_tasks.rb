class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :task_name, null: false
      t.boolean :active, null: false, default: false
      t.references :content, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
