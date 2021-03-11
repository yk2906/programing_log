class CreateBookMarks < ActiveRecord::Migration[6.0]
  def change
    create_table :book_marks do |t|
      t.string :book_mark_name, null: false
      t.string :tag
      t.string :book_mark_url, null: false

      t.timestamps
    end
  end
end
