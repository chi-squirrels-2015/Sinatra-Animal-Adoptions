require 'Faker'

Species.create(species_name: "Dog")
Species.create(species_name: "Cat")
Species.create(species_name: "Rabbit") #Down the Rabbit Hole...

Breed.create(breed_name: "Golden Retriever", species_id: 1)
Breed.create(breed_name: "Norwegian Duck Tolling Retriever", species_id: 1)
Breed.create(breed_name: "Labrador", species_id: 1)
Breed.create(breed_name: "Siamese", species_id: 2)
Breed.create(breed_name: "Calico", species_id: 2)
Breed.create(breed_name: "Tiger", species_id: 2)
Breed.create(breed_name: "Bugs", species_id: 3)
Breed.create(breed_name: "Dwarf", species_id: 3)
Breed.create(breed_name: "Cottontail", species_id: 3)

breeds = Breed.all

Location.create(location_name: "Anti-Cruelty Society", state: "IL")
Location.create(location_name: "The Puppy Place", state: "NY")
Location.create(location_name: "The Rabbit Hole", state: "WA")

30.times do
  post = Post.create(location_id: [1,2,3].sample)
  breed = breeds.sample
  Animal.create(name: Faker::Name.first_name, age: rand(0..7), sex: ["M", "F"].sample, adoption_fee: rand(95..200), intake_date: Faker::Date.backward(31), location: post.location, breed: breed, post: post, picture: Faker::Avatar.image)
end





