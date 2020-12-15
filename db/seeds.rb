# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

EMAIL = "test@example.com"
PASSWORD = "password"

User.destroy_all
Post.destroy_all

# 以下、開発用の初期データ
user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

post1 = user2.posts.create!(content: "沖縄そば")
post2 = user1.posts.create!(content: "海ぶどう")
post3 = user3.posts.create!(content: "ゴーヤーチャンプルー")
post4 = user3.posts.create!(content: "サーターアンダギー")
post5 = user1.posts.create!(content: "タコライス")

post1.likes.create!(user_id: user1.id)
post1.likes.create!(user_id: user3.id)
post2.likes.create!(user_id: user2.id)
post3.likes.create!(user_id: user1.id)
post4.likes.create!(user_id: user1.id)
post4.likes.create!(user_id: user2.id)
post5.likes.create!(user_id: user3.id)

User.create!(email: EMAIL, password: PASSWORD)

puts "初期データの投入に成功しました！"