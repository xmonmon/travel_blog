# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'Ian', last_name: 'Civgin', email: 'ian@test.com', password: 'test', current_city: 'San Francisco', avatar: 'https://s-media-cache-ak0.pinimg.com/736x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg')
User.create(first_name: 'Monika', last_name: 'Chumber', email: 'monika@test.com', password: 'test', current_city: 'San Francisco', avatar: 'https://s-media-cache-ak0.pinimg.com/736x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg')
User.create(first_name: 'Tim', last_name: 'Festa', email: 'tim@test.com', password: 'demo', current_city: 'San Francisco', avatar: 'https://s-media-cache-ak0.pinimg.com/736x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg')
User.create(first_name: 'Adam', last_name: 'Braus', email: 'braus@test.com', password: 'test', current_city: 'London', avatar: 'https://s-media-cache-ak0.pinimg.com/736x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg')
User.create(first_name: 'Test', last_name: 'Test', email: 'test@demo.com', password: 'demo', current_city: 'San Francisco', avatar: 'https://s-media-cache-ak0.pinimg.com/736x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg')
User.create(first_name: 'Zoe', last_name: 'Foss', email: 'zoe@test.com', password: 'test', current_city: 'London', avatar: 'https://s-media-cache-ak0.pinimg.com/736x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg')

City.create(name: 'San Francisco', latitude: '37.7833', longitude: '-122.4167', photo: 'http://i.imgur.com/RUULF9F.jpg')
City.create(name: 'London', latitude: '51.5072', longitude: '-0.1275', photo: 'http://i.imgur.com/PNoO5bV.jpg')
City.create(name: 'Gibraltar', latitude: '36.1430', longitude: '-5.3530', photo: 'http://i.imgur.com/pqcJR3u.jpg')
City.create(name: 'Mumbai', latitude: '18.9750', longitude: '72.8258', photo: 'http://i.imgur.com/dnFfjLP.jpg')
City.create(name: 'Austin', latitude: '30.2500', longitude: '-97.7500', photo: 'http://i.imgur.com/Qjb6E2R.jpg')
City.create(name: 'Prague', latitude: '50.0833', longitude: '14.4167', photo: 'http://i.imgur.com/wLR2nFQ.jpg')
City.create(name: 'Barcelona', latitude: '41.3833', longitude: '2.1833', photo: 'http://i.imgur.com/7A8TxIH.jpg')
City.create(name: 'Rome', latitude: '41.9000', longitude: '12.5000', photo: 'http://i.imgur.com/7f75fUK.jpg')
City.create(name: 'Dubai', latitude: '25.2048', longitude: '55.2708', photo: 'http://i.imgur.com/ZpuIIfV.jpg')
City.create(name: 'Interlaken', latitude: '46.6833', longitude: '7.8500', photo: 'http://i.imgur.com/ublHntR.jpg')


Post.create(title: 'Best place to eat: sushi', body: 'OMG, there is this place downtown called Sushirrrrrrito. It is like a sushi roll in a burrito. CRAZY!!! I need to explore this food group further and you should too.', user_id: '1', city_id: '1')
Post.create(title: 'Best airport: SFO or OAK', body: 'MOS DEF SFO. It is the tits.', user_id: '2', city_id: '1')
Post.create(title: 'Best Coffee Joint!', body: "Okay, so in the Financial District there's this place called Blue Bottle! It's freaking amazing! Not only is the coffee amazing, but they have amazing Hot Chocolate! You HAVE to go here!", user_id: '3', city_id: '2')
Post.create(title: 'Worst Coffee Joint!', body: "Starbucks.  All they ever do is make bad coffee. Literally, there's never enough caramel in my macchiato, even when I say 'extra', ugh so annoying.", user_id: '4', city_id: '2')
Post.create(title: 'Best Place to Visit!', body: "Twin Peaks is amazing! Not only do you get an amazing view, but there's also a swing there that EVERYONE takes pictures on, totally Instafamous.", user_id: '1', city_id: '4')
Post.create(title: 'Worst Place to Visit!', body: "Golden Gate Park. Like, I totally get that it's an amazing place, but C'MON the wind!? My hair gets sooo messed up. ugh, never coming back.", user_id: '2', city_id: '4')
Post.create(title: 'Wow so cool', body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '3', city_id: '3')
Post.create(title: 'Even cooler', body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '4', city_id: '5')
Post.create(title: 'OMG', body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '1', city_id: '10')
Post.create(title: 'Becky', body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '2', city_id: '6')
Post.create(title: 'LOL', body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '3', city_id: '7')
Post.create(title: 'LITERALLY', body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '4', city_id: '9')
Post.create(title: 'I cant even', body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '1', city_id: '8')
# Post.create(title: 'u r so cool, body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '3', city_id: '8')
# Post.create(title: 'OMG', body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '4', city_id: '9')
# Post.create(title: 'Becky', body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '4', city_id: '9')
# Post.create(title: 'LOL', body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '2', city_id: '10')
# Post.create(title: 'LITERALLY', body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '1', city_id: '10')
# Post.create(title: 'I cant even', body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '3', city_id: '8')
# Post.create(title: 'u r so cool, body: "Fixie American Apparel mixtape, fanny pack direct trade heirloom banh mi cornhole. Brunch tofu selfies, blog cray ennui iPhone hoodie fashion axe authentic Bushwick Echo Park mlkshk Vice. Master cleanse mixtape cornhole, deep v sartorial Williamsburg Banksy hoodie tousled PBR&B gentrify cardigan polaroid cliche fanny pack. Polaroid vegan Portland plaid pickled. Wes Anderson cornhole twee, selvage chambray mumblecore plaid organic occupy authentic. Swag drinking vinegar chambray DIY, trust fund stumptown you probably haven't heard of them letterpress sustainable brunch next level organic. Etsy drinking vinegar 90's deep v keytar Williamsburg.", user_id: '4', city_id: '8')


Post.create(title: 'Best Coffee Joint!', body: "Okay, so in the Financial District there's this place called Blue Bottle! It's freaking amazing! Not only is the coffee amazing, but they have amazing Hot Chocolate! You HAVE to go here!", user_id: '2', city_id: '1')
Post.create(title: 'Worst Coffee Joint!', body: "Starbucks.  All they ever do is make bad coffee. Literally, there's never enough caramel in my macchiato, even when I say 'extra', ugh so annoying.", user_id: '2', city_id: '1')

Post.create(title: 'Best Place to Visit!', body: "Twin Peaks is amazing! Not only do you get an amazing view, but there's also a swing there that EVERYONE takes pictures on, totally Instafamous.", user_id: '2', city_id: '1')
Post.create(title: 'Worst Place to Visit!', body: "Golden Gate Park. Like, I totally get that it's an amazing place, but C'MON the wind!? My hair gets sooo messed up. ugh, never coming back.", user_id: '2', city_id: '1')
Post.create(title: 'Best Coffee Joint!', body: "Okay, so in the Financial District there's this place called Blue Bottle! It's freaking amazing! Not only is the coffee amazing, but they have amazing Hot Chocolate! You HAVE to go here!", user_id: '2', city_id: '3')
Post.create(title: 'Worst Coffee Joint!', body: "Starbucks.  All they ever do is make bad coffee. Literally, there's never enough caramel in my macchiato, even when I say 'extra', ugh so annoying.", user_id: '2', city_id: '3')

Post.create(title: 'Best Place to Visit!', body: "Twin Peaks is amazing! Not only do you get an amazing view, but there's also a swing there that EVERYONE takes pictures on, totally Instafamous.", user_id: '2', city_id: '2')
Post.create(title: 'Worst Place to Visit!', body: "Golden Gate Park. Like, I totally get that it's an amazing place, but C'MON the wind!? My hair gets sooo messed up. ugh, never coming back.", user_id: '2', city_id: '2')

