class Progress < ApplicationRecord
  has_one :content

  validates :study_date, presence: true
  validates :today, :this_week, :this_month, :total_time, numericality: { greater_than: 0 }

  def this_week
    today * 7
  end

  def this_month
    
  end
end