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

100.times do |i|
  admin.posts.create(title: "Admin post #{i}", expiration_date: Time.now)
  user.posts.create(title: "User post #{i}", expiration_date: Time.now)
end

  Post.all.each { |p| p.categories << Category.all.sample}
