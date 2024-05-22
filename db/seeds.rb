# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "starting to generate"

mic1 = Restaurant.create(name:  'House of Small Sumbers', address: 'Mitte', phone_number: '1234567890', category: "chinese")
10.times do
  review = Review.new(content: Faker::Quote.famous_last_words, rating: (0..5).to_a.sample)
  review.restaurant = mic1
  review.save
end
mic2 = Restaurant.create(name:  'Cafe Pilz', address: 'Neukoelln', phone_number: '1234567890', category: "italian")
10.times do
  review = Review.new(content: Faker::Quote.famous_last_words, rating: (0..5).to_a.sample)
  review.restaurant = mic2
  review.save
end
mic3 = Restaurant.create(name:  'Ogam', address: 'Neukoelln', phone_number: '1234567890', category: "japanese")
10.times do
  review = Review.new(content: Faker::Quote.famous_last_words, rating: (0..5).to_a.sample)
  review.restaurant = mic3
  review.save
end
mic4 = Restaurant.create(name:  'Markthalle 9', address: 'Kreuzberg', phone_number: '1234567890', category: "french")
10.times do
  review = Review.new(content: Faker::Quote.famous_last_words, rating: (0..5).to_a.sample)
  review.restaurant = mic4
  review.save
end
mic5 = Restaurant.create(name:  'Shiori', address: 'Weinmeisterstrasse', phone_number: '1234567890', category: "japanese")
10.times do
  review = Review.new(content: Faker::Quote.famous_last_words, rating: (0..5).to_a.sample)
  review.restaurant = mic5
  review.save
end
mic6 = Restaurant.create(name:  'HERMAN', address: 'Kreuzberg', phone_number: '1234567890', category: "belgian")
10.times do
  review = Review.new(content: Faker::Quote.famous_last_words, rating: (0..5).to_a.sample)
  review.restaurant = mic6
  review.save
end

5.times do
  restaurant = Restaurant.create(name: Faker::Sports::Basketball.player, address: Faker::Locations::Australia.location, category:["chinese", "italian", "japanese", "french", "belgian"].sample)
  10.times do
    review = Review.new(content: Faker::Quote.famous_last_words, rating: (0..5).to_a.sample)
    review.restaurant = restaurant
    review.save
  end
end

puts "done"