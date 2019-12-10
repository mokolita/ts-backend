Fabricator(:user) do 
    first_name { Faker::Name.name }
    last_name {Faker::Name.name}
    email { Faker::Internet.email }
    password { Faker::Games::Pokemon.name }
    locations(count: 2)
    # comments(count: 2)
end 