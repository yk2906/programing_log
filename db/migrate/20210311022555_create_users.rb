class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name, null: false
      t.string :email, null: false
      t.string :password_digest
      t.string :image
      t.text :profile_text
      t.text :link
      t.references :content, foreign_key: true

      t.timestamps
    end
  end
end
