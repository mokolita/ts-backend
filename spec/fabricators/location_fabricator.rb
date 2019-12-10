Fabricator(:location) do 
    name { Faker::Cosmere.spren }
    content { Faker::Lorem.sentences(number: 1) }
    latitude {Faker::Address.latitude}
    longitude {Faker::Address.longitude}
end 