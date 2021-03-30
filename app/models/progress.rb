class Progress < ApplicationRecord
  has_one :content

  validates :study_date, presence: true
end