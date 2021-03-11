class CreateProgress < ActiveRecord::Migration[6.0]
  def change
    create_table :progresses do |t|
      t.date :study_date, null: false
      t.time :today
      t.time :this_week
      t.time :this_month
      t.time :total_time

      t.timestamps
    end
  end
end
