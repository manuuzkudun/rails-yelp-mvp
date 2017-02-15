Restaurant.destroy_all

10.times do
  name = Faker::Company.name
  address = "#{Faker::Address.street_address} #{Faker::Address.zip} #{Faker::Address.city}"
  phone = Faker::PhoneNumber.phone_number
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  restaurant = Restaurant.new(name: name, address: address, phone: phone, category: category)
  restaurant.save

  (1..5).to_a.sample.times do
    review_content = Faker::Lorem.sentence
    review_rating = (0..5).to_a.sample
    review = Review.new(content: review_content, rating: review_rating)
    review.restaurant = restaurant
    review.save
  end
end
