puts 'Clearing restaurants...'
Restaurant.destroy_all
puts 'Clearing reviews...'
Review.destroy_all

puts 'Creating new restaurants with reviews...'
category = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category.sample
  )

  puts "restuarant #{restaurant.name} created. adding reviews..."

  5.times do
    review = Review.new(
      rating: rand(0..5),
      content: Faker::Restaurant.review
    )

    restaurant.reviews << review
    puts 'added review!'
  end

  restaurant.save!
end
