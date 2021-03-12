class Content < ApplicationRecord
  belongs_to :user, :programming_language
  belongs_to :progress, :task, :book_mark, optional: true

end