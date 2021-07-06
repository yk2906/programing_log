class Content < ApplicationRecord
  has_one :progress, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :book_marks, dependent: :destroy

  validates :study_topics_title, presence: true, length: { maximum: 100 }
end