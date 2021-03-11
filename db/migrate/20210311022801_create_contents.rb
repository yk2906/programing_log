class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.references :user, null: false, foreign_key: true
      t.references :programming_language, null: false, foreign_key: true
      t.references :task, foreign_key: true
      t.references :book_mark, foreign_key: true

      t.timestamps
    end
  end
end
