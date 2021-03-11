class CreateProgrammingLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :programming_languages do |t|
      t.string :programming_languages_name, null: false
      t.string :logo

      t.timestamps
    end
  end
end
