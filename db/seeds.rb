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

puts "Destroying all posts"
Post.destroy_all

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


puts "Creating an test user"
user = User.create(email: "teste@teste.com", password: "123456", username: "teste", sexual_orientation: SexualOrientation.first, full_name: "Teste Teste", role: "User", birth_date: DateTime.new(1990, 9, 8), document: "55555X")
puts "Setting test user as admin"
user.admin = true
user.save!
puts "Created user"
puts "Creating an user"
user1 = User.create(email: "afonso@hotmail.com", password: "123456", username: "afonsinho", sexual_orientation: SexualOrientation.first, full_name: "Afonso Pereira", role: "User", birth_date: DateTime.new(1996, 9, 12), document: "55556X")
puts "Created user"
puts "Creating an user"
user2 = User.create(email: "jesica@gmail.com", password: "123456", username: "jaacabou", sexual_orientation: SexualOrientation.last, full_name: "Jesica Nunes", role: "User", birth_date: DateTime.new(1980, 9, 10), document: "55575X")
puts "Created user"
puts "Creating an user"
user3 = User.create(email: "bob@yahoo.com", password: "123456", username: "bob", sexual_orientation: SexualOrientation.last, full_name: "Bob Marley", role: "User", birth_date: DateTime.new(1999, 12, 8), document: "55558X")
puts "Created user"

puts "Creating user interest"
UserInterest.create(user: user, category: Category.first)
puts "Created user interest"
puts "Creating user interest"
massagem = UserInterest.create(user: User.find_by(username: "afonsinho"), category: Category.last)
puts "Created user interest"
puts "Creating user interest"
tantra1 = UserInterest.create(user: User.find_by(username: "afonsinho"), category: Category.first)
puts "Created user interest"
puts "Creating user interest"
tantra2 = UserInterest.create(user: User.find_by(username: "jaacabou"), category: Category.first)
puts "Created user interest"
puts "Creating user interest"
massagem1 = UserInterest.create(user: User.find_by(username: "bob"), category: Category.last)
puts "Created user interest"

puts "Creating a post"
post1 = Post.create!(title: "titulo", content: "conteudo", status: "Submitted", user: user )
puts "Created one post"
puts "Creating a post"
post2 = Post.create!(title: "titulo2", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", status: "Approved", user: user )
puts "Created one post"
puts "Creating a post"
post3 = Post.create!(title: "titulo3", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", status: "Approved", user: user1 )
puts "Created one post"
puts "Creating a post"
post4 = Post.create!(title: "titulo4", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", status: "Approved", user: user2 )
puts "Created one post"
puts "Creating a post"
post5 = Post.create!(title: "titulo5", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", status: "Approved", user: user3 )
puts "Created one post"
puts "Creating a post"
post6 = Post.create!(title: "titulo6", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", status: "Approved", user: user3 )
puts "Created one post"

puts "Creating post category"
PostCategory.create!(post: post1, category: Category.first)
puts "Created post category"

puts "Creating post category"
PostCategory.create!(post: post2, category: Category.last)
puts "Created post category"

puts "Creating post category"
PostCategory.create!(post: post3, category: Category.first)
puts "Created post category"

puts "Creating post category"
PostCategory.create!(post: post4, category: Category.last)
puts "Created post category"

puts "Creating post category"
PostCategory.create!(post: post5, category: Category.first)
puts "Created post category"

puts "Creating post category"
PostCategory.create!(post: post6, category: Category.last)
puts "Created post category"

puts "Successful seed"