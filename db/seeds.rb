puts "🌱 Seeding data, Please wait..."

# Seed shall feature here
30.times do
    #create 30 users with random data
    User.create(
        name: Faker::Name.name,
        username: Faker::Name.first_name,
        email: Faker::Internet.email,
        phone_number: rand(254722000000..254799999999),
        age: rand(18..55),
        password: 'test'
    )
    #create 30 listings with random data
    Listing.create(
        name: Faker::Company.name,
        city: Faker::Address.city,
        location_url: Faker::Address.full_address,
        image_url: Faker::LoremFlickr.image,
        price: rand(20..99),
        rating: rand(5.5..9.8),
        owner_id: rand(1..10),
        user_id: rand(1..30)
    )
end
10.times do
    #ceate 10 owners with data
    Owner.create(
        name: Faker::Name.name,
        username: Faker::Name.initials,
        email: Faker::Internet.email,
        phone_number: rand(254722000000..254799999999)
    )
end

puts "✅ Done!"
