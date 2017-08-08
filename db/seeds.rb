puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Frade dos Mares",
    address:      "Av. D. Carlos I, nº 55 A 1200-647 Lisboa",
    description:  "Portuguese fish dishes",
    stars:        3
  },
  {
    name:         "Cantinho Lusitano",
    address:      "Rua dos Prazeres 52, 1200-355 Lisboa",
    description:  "Portuguese tapas",
    stars:        3
  },
  {
    name:         "Cervejaria Edmundo",
    address:      "Av. Gomes Pereira 1, 1500-086 Lisboa",
    description:  "Seafood",
    stars:        2
  },
  {
    name:         "Frankies",
    address:      "Av. Alves Redol, Lisboa",
    description:  "Hotdogs",
    stars:        1
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
