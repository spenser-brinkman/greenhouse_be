Plant.destroy_all
Space.destroy_all

laundry = Space.create(name: "Laundry", humidity: 4, light: 4)
bedroom = Space.create(name: "Bedroom", humidity: 2, light: 3)
livingroom = Space.create(name: "Living Room", humidity: 2, light: 2)

Plant.create(space_id: laundry.id, species: "Alocasia", light_req: 3, humidity_req: 4, water_freq: 7, last_water: Date.today-6, last_fert: Date.today-30, comments: "Watch for spider mites")
Plant.create(space_id: laundry.id, species: "Fern", light_req: 2, humidity_req: 5, water_freq: 3, last_water: Date.today, last_fert: Date.today-30, comments: "Rescue is doing well")
Plant.create(space_id: laundry.id, species: "Fern", light_req: 2, humidity_req: 5, water_freq: 3, last_water: Date.today, last_fert: Date.today-30, comments: "Noticed yellowing on leaves, keep an eye on moisture")
Plant.create(space_id: laundry.id, species: "Satin Pothos", light_req: 3, humidity_req: 2, water_freq: 14, last_water: Date.today-1, last_fert: Date.today-30, comments: "")
Plant.create(space_id: laundry.id, species: "Neon Pothos", light_req: 3, humidity_req: 2, water_freq: 14, last_water: Date.today-1, last_fert: Date.today-30, comments: `Propagation started on #{Date.today-15}`)
Plant.create(space_id: bedroom.id, species: "Bambino Fiddle Leaf Fig", light_req: 3, humidity_req: 2, water_freq: 7, last_water: Date.today-3, last_fert: Date.today-30, comments: "")
Plant.create(space_id: bedroom.id, species: "Philodendron Birkin", light_req: 3, humidity_req: 2, water_freq: 7, last_water: Date.today-6, last_fert: Date.today-30, comments: "")
Plant.create(space_id: bedroom.id, species: "Philodendron Micans", light_req: 3, humidity_req: 2, water_freq: 7, last_water: Date.today-5, last_fert: Date.today-30, comments: "")
Plant.create(space_id: livingroom.id, species: "Snake Plant", light_req: 2, humidity_req: 1, water_freq: 30, last_water: Date.today-15, last_fert: Date.today-30, comments: "")
Plant.create(space_id: livingroom.id, species: "Dracaena", light_req: 2, humidity_req: 1, water_freq: 14, last_water: Date.today-10, last_fert: Date.today-30, comments: "Thirsty for a dracaena")
Plant.create(space_id: livingroom.id, species: "Rubber Plant", light_req: 3, humidity_req: 2, water_freq: 18, last_water: Date.today-15, last_fert: Date.today-30, comments: "Keep the leaves clean")
Plant.create(space_id: livingroom.id, species: "Neon Pothos", light_req: 3, humidity_req: 2, water_freq: 14, last_water: Date.today-5, last_fert: Date.today-30, comments: "Parent of propagation in laundry room")
Plant.create(space_id: livingroom.id, species: "Philodendron Rojo Congo", light_req: 3, humidity_req: 2, water_freq: 14, last_water: Date.today-2, last_fert: Date.today-30, comments: "New addition!")
Plant.create(species: "Bonsai", light_req: 2, humidity_req: 1, water_freq: 8, last_water: Date.today-8, last_fert: Date.today-30, comments: "Needs rewiring in March 2021")
Plant.create(species: "Monstera", light_req: 1, humidity_req: 4, water_freq: 3, last_water: Date.today-5, last_fert: Date.today-30, comments: "Possible root rot :( Needs monitoring")
