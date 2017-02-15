Restaurant.destroy_all

10.times do
  name = Faker::Company.name
  address = "#{Faker::Address.street_address} #{Faker::Address.zip} #{Faker::Address.city}"
  phone = Faker::PhoneNumber.phone_number
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  Restaurant.create(name: name, address: address, phone: phone, category: category)
end
