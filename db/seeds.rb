Plant.destroy_all
Space.destroy_all

bathroom = Space.create(name: "Bathroom", humidity: 4, light: 2)
bedroom = Space.create(name: "Bedroom", humidity: 1, light: 3)
livingroom = Space.create(name: "Living Room", humidity: 1, light: 4)
greenhouse = Space.create(name: "Green House", humidity: 5, light: 5)

Plant.create(space_id: bathroom.id, species: "Jade Plant", light_req: 3, humidity_req: 1, water_freq: 14, last_water: Date.today-10, last_fert: Date.today-30, comments: "Fragile stems, be careful!")
Plant.create(space_id: bathroom.id, species: "Pothos", light_req: 4, humidity_req: 3, water_freq: 10, last_water: Date.today, last_fert: Date.today-30, comments: "My first plant <3")
Plant.create(space_id: bathroom.id, species: "Orchid", light_req: 1, humidity_req: 3, water_freq: 7, last_water: Date.today-1, last_fert: Date.today-30, comments: "Has yet to reflower since 2019... Ugh.")
Plant.create(space_id: bedroom.id, species: "Dracaena", light_req: 1, humidity_req: 4, water_freq: 3, last_water: Date.today-3, last_fert: Date.today-30, comments: "A bit thirsty for a dracaena")
Plant.create(space_id: bedroom.id, species: "Spider Plant", light_req: 1, humidity_req: 2, water_freq: 5, last_water: Date.today-6, last_fert: Date.today-30, comments: "Keep an eye out for mites")
Plant.create(space_id: bedroom.id, species: "Rubber Plant", light_req: 4, humidity_req: 2, water_freq: 7, last_water: Date.today-5, last_fert: Date.today-30, comments: "Leaves need regular dusting")
Plant.create(space_id: livingroom.id, species: "Aloe Vera", light_req: 3, humidity_req: 1, water_freq: 20, last_water: Date.today-15, last_fert: Date.today-30, comments: "")
Plant.create(space_id: livingroom.id, species: "Snake Plant", light_req: 5, humidity_req: 1, water_freq: 14, last_water: Date.today, last_fert: Date.today-30, comments: "Mildly toxic, keep an eye on visiting pets!")
Plant.create(space_id: greenhouse.id, species: "Peace Lily", light_req: 5, humidity_req: 5, water_freq: 1, last_water: Date.today-1, last_fert: Date.today-30, comments: "Temperamental!")
Plant.create(space_id: greenhouse.id, species: "Ficus", light_req: 4, humidity_req: 4, water_freq: 4, last_water: Date.today-4, last_fert: Date.today-30, comments: "")
Plant.create(space_id: greenhouse.id, species: "Bromeliad", light_req: 3, humidity_req: 2, water_freq: 15, last_water: Date.today-16, last_fert: Date.today-30, comments: "")
Plant.create(species: "Bonsai", light_req: 2, humidity_req: 1, water_freq: 8, last_water: Date.today-8, last_fert: Date.today-30, comments: "Needs rewiring in March 2021")
Plant.create(species: "Monstera", light_req: 1, humidity_req: 4, water_freq: 3, last_water: Date.today-5, last_fert: Date.today-30, comments: "Possible root rot :( Needs monitoring")