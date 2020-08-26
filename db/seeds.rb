#Engineers
User.create(name: "Tony Maserati", username: "tonyinamasi", location: "Los Angeles, CA", bio: "It's Tony in a Masi here. That is all.", rating: 5, password: "password", email: "tonymaserati@gmail.com")
User.create(name: "Alex Tumay", username: "tumaytoes", location: "Los Angeles, CA", bio: "Ever heard of Sausage Fattener?", rating: 5, password: "password", email: "alextumay@gmail.com")
User.create(name: "Kesha Lee", username: "nvrpolished", location: "Los Angeles, CA", bio: "Vocal processing? Sorry, I like my mixes organic 🤷🏾‍♀️", rating: 5, password: "password", email: "keshalee@gmail.com")
User.create(name: "Mike Dean", username: "mikedean", location: "New York City, NY", bio: "If you use CLA plugins I hate you.", rating: 5, password: "password", email: "mikedean@gmail.com")
User.create(name: "Chris Lord-Alge", username: "bigbooster", location: "New York City, NY", bio: "Just boost 7K a bit.", rating: 5, password: "password", email: "cla@gmail.com")
#Customers
User.create(name: "Travis Scott", username: "goosebumpz", location: "Los Angeles, CA", bio: "Don't you open up that window...", rating: 5, password: "password", email: "travisscott@gmail.com")
User.create(name: "Young Thug", username: "thugger", location: "Los Angeles, CA", bio: "I birthed all of you.", rating: 5, password: "password", email: "thuggerbby@gmail.com")
User.create(name: "Lil Uzi Vert", username: "liluzivert", location: "Los Angeles, CA", bio: "All my friends are dead.", rating: 5, password: "password", email: "liluzivert@gmail.com")
User.create(name: "Tom DeLonge", username: "imissblink", location: "Los Angeles, CA", bio: "Ever heard of aliens?", rating: 5, password: "password", email: "aliensexist@gmail.com")
User.create(name: "Gerard Way", username: "ripmcr", location: "Los Angeles, CA", bio: "Joe Rogan is my cousin.", rating: 5, password: "password", email: "mcr@gmail.com")
#Services
Service.create(title: "Multi-Track Mixing", description: "Professional quality multi-track mixing.", price: 250, requirements: "Pro Tools Session ZIPPED", user_id: 1)
Service.create(title: "Mixing", description: "I use CLA Vocals, what else do I need to say?", price: 1000, requirements: "Who cares?", user_id: 2)
Service.create(title: "Cruelty-Free Mixing", description: "Amateur mixing using absolutely zero processing. Ask UZI!", price: 750, requirements: "MP3 ONLY, 128kbps or less.", user_id: 3)
Service.create(title: "Judgemental Mixing + Mastering", description: "I'll both mix AND master your project, but not without giving my opinion anywhere it isn't needed.", price: 500, requirements: "Just send it. I don't care how, just do it.", user_id: 4)
Service.create(title: "Ultimate Mastering", description: "I assure you I will boost every frequency known to man. ", price: 200, requirements: "WAV, 16bit only.", user_id: 5)
#Orders
Order.create(user_id: 6, service_id: 1)
Order.create(user_id: 7, service_id: 2)
Order.create(user_id: 8, service_id: 3)
Order.create(user_id: 9, service_id: 4)
Order.create(user_id: 10, service_id: 5)
#Reviews
Review.create(user_id: 6, service_id: 1, order_id: 1, content: "Absolutely Great Service! 10/10 I will certainly be back again!", rating: 5)
Review.create(user_id: 7, service_id: 2, order_id: 2, content: "Sounds great but terrible username.", rating: 2)
Review.create(user_id: 8, service_id: 3, order_id: 3, content: "If I wanted my vocals to be raw I wouldn't have had them mixed...", rating: 1)
Review.create(user_id: 9, service_id: 4, order_id: 4, content: "Sounds awesome but my self esteem is no longer existent.", rating: 3)