# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
json_serialized = open(url).read
items = JSON.parse(json_serialized)
items["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

Cocktail.create(name: 'Vodka Martini')
Cocktail.create(name: 'Cosmopolitan')
Cocktail.create(name: 'Mojito')
Cocktail.create(name: 'Piña Colada')
Cocktail.create(name: 'Gin Tonic')
Cocktail.create(name: 'Americano')
Cocktail.create(name: 'Mai Tai')
Cocktail.create(name: 'Bloody Mary')
Cocktail.create(name: 'Margarita')
Cocktail.create(name: 'Whiskey Sour')
