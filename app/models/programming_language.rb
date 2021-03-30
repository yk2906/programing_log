class ProgrammingLanguage < ApplicationRecord
  has_one :content

  validates :programming_language_name, presence: true
end