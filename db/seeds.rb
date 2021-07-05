# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 追加済　7/5時点
2.times do |n|
  user = User.new(
    user_name: "テストユーザー#{n}",
    email: "test#{n}@gmail.com",
    password_digest: "password"
  )

  user.save!
end

# 追加済　7/5時点
# 2.times do |n|
#   book_mark = BookMark.new(
#     book_mark_name: "テストブックマーク#{n}",
#     tag: "ブックマークタグ#{n}",
#     book_mark_url: "https://qiita.com/"
#   )

#   book_mark.save!
# end

3.times do |n|
  content = Content.new()

  3.times do |o|
    content.book_marks.build(
      book_mark_name: "ブックマーク#{o}",
      tag: "ブックマークタグ#{o}",
      book_mark_url: "https://qiita.com/"
    )
  end

  3.times do |p|
    content.programming_languages.build(
      programming_languages_name: "ruby",
      logo: File.open('./app/assets/images/ruby.svg')
    )
  end

  3.times do |q|
    content.progresses.build(
      study_date: "7/1",
      today: "1:00",
      this_week: "2:00",
      this_month: "3:00",
      total_time: "3:00"
    )
  end

  3.times do |r|
    content.tasks.build(
      task_name: "タスク#{r}",
      active: false
    )
  end

  content.save!
end