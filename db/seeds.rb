Listing.delete_all

15.times do
  Listing.create({
    :address => Faker::Address.street_address,
    :city => Faker::Address.city,
    :state => "WA",
    :zip => Faker::Address.zip,
    :description => Faker::Lorem.sentence(2)
  })
end
