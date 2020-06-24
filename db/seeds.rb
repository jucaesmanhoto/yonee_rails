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