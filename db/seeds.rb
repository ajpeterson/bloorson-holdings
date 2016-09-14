user1 = User.create({ name: 'Andrew', email: 'ajared327@aol.com', password: 'password' })
user2 = User.create({ name: 'Barry', email: 'bcogs@yahoo.com', password: 'helloworld' })


8.times do
  user1.listings.create({
    :address => Faker::Address.street_address,
    :city => Faker::Address.city,
    :state => "WA",
    :zip => Faker::Address.zip,
    :description => Faker::Lorem.sentence(2)
  })
end

8.times do
  user2.listings.create({
    :address => Faker::Address.street_address,
    :city => Faker::Address.city,
    :state => "WA",
    :zip => Faker::Address.zip,
    :description => Faker::Lorem.sentence(2)
  })
end
