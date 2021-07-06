class BookMark < ApplicationRecord
  belongs_to :content

  validates :book_mark_name, presence: true
end