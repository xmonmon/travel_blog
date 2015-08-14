# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'Ian', last_name: 'Civgin', email: 'ian@test.com', password: 'test', current_city: 'San Francisco', avatar: 'https://upload.wikimedia.org/wikipedia/commons/7/72/1,3,5-trichlorobenzene.png')
User.create(first_name: 'Monika', last_name: 'Chumber', email: 'monika@test.com', password: 'test', current_city: 'San Francisco', avatar: 'https://upload.wikimedia.org/wikipedia/commons/7/72/1,3,5-trichlorobenzene.png')
User.create(first_name: 'Demo', last_name: 'Demo', email: 'demo@demo.com', password: 'demo', current_city: 'San Francisco', avatar: 'https://upload.wikimedia.org/wikipedia/commons/7/72/1,3,5-trichlorobenzene.png')

City.create(name: 'San Francisco', latitude: '37.7833', longitude: '-122.4167', photo: 'https://upload.wikimedia.org/wikipedia/commons/c/ce/San_Francisco_at_Sunset_Panorama.jpg')
City.create(name: 'London', latitude: '51.5072', longitude: '-0.1275', photo: 'http://www.7littlemoments.com/images/products/panorama_london_full.jpg')
City.create(name: 'Gibraltar', latitude: '36.1430', longitude: '-5.3530', photo: 'http://www.lazyhiker.com/photos/2010_moor/highlights/panorama/20101106155610_view--gibraltar_monkey.jpg')


Post.create(title: 'Best place to eat: sushi', body: 'OMG, there is this place downtown called Sushirrrrrrito. It is like a sushi roll in a burrito. CRAZY!!! I need to explore this food group further and you should too.', user_id: '1', city_id: '1')
Post.create(title: 'Best airport: SFO or OAK', body: 'MOS DEF SFO. It is the tits.', user_id: '1', city_id: '1')

Post.create(title: 'Best Coffee Joint!', body: "Okay, so in the Financial District there's this place called Blue Bottle! It's freaking amazing! Not only is the coffee amazing, but they have amazing Hot Chocolate! You HAVE to go here!", user_id: '2', city_id: '1')
Post.create(title: 'Worst Coffee Joint!', body: "Starbucks.  All they ever do is make bad coffee. Literally, there's never enough caramel in my macchiato, even when I say 'extra', ugh so annoying.", user_id: '2', city_id: '1')

Post.create(title: 'Best Place to Visit!', body: "Twin Peaks is amazing! Not only do you get an amazing view, but there's also a swing there that EVERYONE takes pictures on, totally Instafamous.", user_id: '2', city_id: '1')
Post.create(title: 'Worst Place to Visit!', body: "Golden Gate Park. Like, I totally get that it's an amazing place, but C'MON the wind!? My hair gets sooo messed up. ugh, never coming back.", user_id: '2', city_id: '1')
Post.create(title: 'Best Coffee Joint!', body: "Okay, so in the Financial District there's this place called Blue Bottle! It's freaking amazing! Not only is the coffee amazing, but they have amazing Hot Chocolate! You HAVE to go here!", user_id: '2', city_id: '3')
Post.create(title: 'Worst Coffee Joint!', body: "Starbucks.  All they ever do is make bad coffee. Literally, there's never enough caramel in my macchiato, even when I say 'extra', ugh so annoying.", user_id: '2', city_id: '3')

Post.create(title: 'Best Place to Visit!', body: "Twin Peaks is amazing! Not only do you get an amazing view, but there's also a swing there that EVERYONE takes pictures on, totally Instafamous.", user_id: '2', city_id: '2')
Post.create(title: 'Worst Place to Visit!', body: "Golden Gate Park. Like, I totally get that it's an amazing place, but C'MON the wind!? My hair gets sooo messed up. ugh, never coming back.", user_id: '2', city_id: '2')
