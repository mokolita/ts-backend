# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# x

meg = User.create(email: 'meg@oakmaine.com', first_name: 'Meg', last_name: 'Galvez', password: 'password')
jason = User.create(email: 'texasstreetfly@gmail.com', first_name: 'Jason', last_name: 'Russell', password: 'password')

loc1 = Location.create(name: 'Winter Park', content: 'Vazquez Rd: Just keep driving back until it turns to dirt. Then look for a spot!', map_coords: '31.08 / 45.0038', user: meg)
loc2 = Location.create(name: 'Crested Butte', content: 'More dirt road and OFF ROADING. 4x4 is a MUST.', map_coords: '42.03839 / 12.298543', user: jason)

com1 = Comment.create(content: 'Camped down Vazques. Great places by river! BUSY on weekends', user: jason, location: loc1)
com2 = Comment.create(content: 'Crested Butte was AWESOME, but they were not lying about the off roading. Get ready to bounce!', user: meg, location: loc2)