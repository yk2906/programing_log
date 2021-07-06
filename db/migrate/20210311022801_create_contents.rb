class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :study_topics_title, null: false
      t.references :user, null: false, foreign_key: true
     
      t.timestamps
    end
  end
end
