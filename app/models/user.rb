class User < ApplicationRecord
  has_secure_password

  has_many :contents

  validates :user_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password_digest, presence: true, uniqueness: true, length: { minimum: 6 }
end