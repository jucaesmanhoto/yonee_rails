# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "Destroying all categories"
Category.destroy_all
puts "Creating a category"
categories = ["tantra", "massagem"]
categories.each do |category|
  puts "Creating #{category} instance"
  Category.create!(category_name: category)
end
puts "Created #{categories.length} categories"


puts "Destroying all users"
User.destroy_all

puts "Destroying all orientations"
SexualOrientation.destroy_all
orientations = ["homosexual", "heterosexual"]
orientations.each do |orientation|
  puts "Creating #{orientation} instance"
  SexualOrientation.create!(orientation: orientation)
end
puts "Created #{orientations.length} orientations"

puts "Destroying all posts"
Post.destroy_all

puts "Destroying all users"
User.destroy_all

puts "Creating an test user"
user = User.create(email: "teste@teste.com", password: "123456", username: "teste", sexual_orientation: SexualOrientation.first, full_name: "Teste Teste", role: "User", birth_date: DateTime.new(1990, 9, 8))
puts "Setting user as admin"
user.admin = true
user.save!
puts "Created user"

puts "Creating user interest"
UserInterest.create(user: user, category: Category.first)
puts "Created user interest"

puts "Creating a post"
post1 = Post.create!(title: "titulo", content: "conteudo", status: "Submitted", user: user )
puts "Created one post"
puts "Creating a post"
post2 = Post.create!(title: "titulo2", content: "conteudo2", status: "Approved", user: user )
puts "Created one post"

puts "Creating post category"
PostCategory.create!(post: post1, category: Category.first)
puts "Created post category"

puts "Creating post category"
PostCategory.create!(post: post2, category: Category.last)
puts "Created post category"

puts "Successful seed"