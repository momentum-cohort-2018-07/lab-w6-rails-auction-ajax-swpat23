# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

items = [
  {
    title: "Fuji from Inume Pass",
    artist: "Katsushika Hokusai",
    description: "Polychrome woodblock print; ink and color on paper",
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/56697/140177/main-image",
    starting_bid: 35000.00
  },
  {
    title: "Lady at the Tea Table",
    artist: "Mary Cassatt",
    description: "Oil on canvas",
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/10391/33531/main-image",
    starting_bid: 15000.00
  },
  {
    title: "Rue Eugène Moussoir at Moret: Winter",
    artist: "Alfred Sisley",
    description: "Oil on canvas",
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/437686/796143/main-image",
    starting_bid: 8000.00
  },
  {
    title: "Colombian Masked Figure Pendant",
    artist: "",
    description: "Gold",
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/312490/665911/main-image",
    starting_bid: 22000.00
  },
  {
    title: "Tomcat's Turf",
    artist: "Paul Klee",
    description: "Watercolor, gouache, and oil on gesso on two sections of fabric mounted on cardboard",
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/483131/1006420/main-image",
    starting_bid: 71400.00
  },
  {
    title: "Madame X",
    artist: "John Singer Sargent",
    description: "Oil on canvas",
    image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/12127/33591/main-image",
    starting_bid: 55000.00
  }
]
Item.delete_all

items.each do |item|
  Item.create(item)
end