# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "Destroying all orientations"
SexualOrientation.destroy_all
orientations = ["homosexual", "heterosexual"]
orientations.each do |orientation|
  puts "Creating #{orientation} instance"
  SexualOrientation.create!(orientation: orientation)
end
puts "Created #{orientations.length} orientations"

puts "Destroying all users"
User.destroy_all
puts "Creating an test user"
user = User.create(email: "teste@teste.com", password: "123456", username: "teste", sexual_orientation: SexualOrientation.first, full_name: "Teste Teste", role: "User", birth_date: DateTime.new(1990, 9, 8))
puts "Setting user as admin"
user.admin = true
user.save!
puts "Successful seed"
