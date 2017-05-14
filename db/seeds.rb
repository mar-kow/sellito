# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(email: 'admin@sellito.pl', password: 'password', is_admin?: true)
user = User.create(email: 'klient@sellito.pl', password: 'password')

categories = %w(home fashion garden beauty kids edu food moto it health hobby sport pets music sex other)

categories.each { |category| Category.create(name: category) }

admin_post_1 = admin.posts.create(title: "Admin Post 1", expiration_date: Time.now + 2.weeks)
admin_post_2 = admin.posts.create(title: "Admin Post 2", expiration_date: Time.now + 3.weeks)
admin_post_3 = admin.posts.create(title: "Admin Post 3", expiration_date: Time.now + 4.weeks)

user_post_1 = user.posts.create(title: "User Post 1", expiration_date: Time.now + 2.weeks)
user_post_2 = user.posts.create(title: "User Post 2", expiration_date: Time.now + 3.weeks)
user_post_3 = user.posts.create(title: "User Post 3", expiration_date: Time.now + 4.weeks)

admin_post_1.categories << Category.first
admin_post_1.categories << Category.last
admin_post_2.categories << Category.first
admin_post_2.categories << Category.last
admin_post_2.categories << Category.find_by(name: 'edu')
admin_post_3.categories << Category.first
admin_post_3.categories << Category.last
admin_post_3.categories << Category.find_by(name: 'edu')

user_post_1.categories << Category.find_by(name: 'edu')
user_post_1.categories << Category.first
user_post_2.categories << Category.first
user_post_2.categories << Category.first
user_post_2.categories << Category.find_by(name: 'kids')
user_post_3.categories << Category.first
user_post_3.categories << Category.first
user_post_3.categories << Category.first
