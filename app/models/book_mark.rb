class BookMark < ApplicationRecord
  has_one :content

  validates :book_mark_name, presence: true
end