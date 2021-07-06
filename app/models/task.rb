class Task < ApplicationRecord
  belongs_to :content

  validates :task_name, presence: true, length: { maximum: 100 }
  validates :active, presence: true
end