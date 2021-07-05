# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 3.times do |n|
#   user = User.new(
#     user_name: "テストユーザー#{n}",
#     email: "test#{n}@gmail.com",
#     password_digest: "password"
#   )

#   user.save!
# end

2.times do |n|
  book_mark = BookMark.new(
    book_mark_name: "テストブックマーク#{n}",
    tag: "ブックマークタグ#{n}",
    book_mark_url: "https://qiita.com/"
  )

  book_mark.save!
end