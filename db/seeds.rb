Engineer.create(name: "Dylan Williamson", username: "dylwill", experience: "Moderate", location: "Saratoga Springs, NY", bio: "New York based Mixing and Mastering Engineer.")

Service.create(title: "Multi-Track Mixing", description: "Professional quality multi-track mixing.", price: 250, requirements: "Pro Tools Session ZIPPED", engineer_id: 1)

Client.create(username: "joeexotic")

Order.create(engineer_id: 1, service_id: 1, client_id: 1)

Review.create(engineer_id: 1, service_id: 1, client_id: 1, order_id: 1, content: "Absolutely Great Service! 10/10 I will certainly be back again!", rating: 5)