# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
json_serialized = open(url).read
items = JSON.parse(json_serialized)
items['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end
Ingredient.create(name: 'Orange curaçao')
Ingredient.create(name: 'Orgeat syrup')
Ingredient.create(name: 'White Rum')
Ingredient.create(name: 'Salt')
Ingredient.create(name: 'Tobasco')
Ingredient.create(name: 'Worcestershire sauce')
Ingredient.create(name: 'Olive')
Ingredient.create(name: 'Pepper')
Ingredient.create(name: 'Cranberry juice')
Ingredient.create(name: 'Coconut Cream')
Ingredient.create(name: 'Mint')
Ingredient.create(name: 'Lime')
Ingredient.create(name: 'Club Soda')
Ingredient.find_by(name: 'demerara Sugar').destroy
Ingredient.create(name: 'Demerara Sugar')

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
Cocktail.create(name: 'Ti Ponch')
Cocktail.create(name: 'Old Fashioned')

# Vodka Martini
Dose.create(description: '3 oz',
            cocktail: Cocktail.find_by(name: 'Vodka Martini'),
            ingredient: Ingredient.find_by(name: 'Vodka'))
Dose.create(description: '1 oz',
            cocktail: Cocktail.find_by(name: 'Vodka Martini'),
            ingredient: Ingredient.find_by(name: 'Dry Vermouth'))
Dose.create(description: '3',
            cocktail: Cocktail.find_by(name: 'Vodka Martini'),
            ingredient: Ingredient.find_by(name: 'Olive'))

# Cosmopolitan
Dose.create(description: '1.5 oz',
            cocktail: Cocktail.find_by(name: 'Cosmopolitan'),
            ingredient: Ingredient.find_by(name: 'Vodka'))
Dose.create(description: '1/4 oz',
            cocktail: Cocktail.find_by(name: 'Cosmopolitan'),
            ingredient: Ingredient.find_by(name: 'Lime juice'))
Dose.create(description: '1/4 oz',
            cocktail: Cocktail.find_by(name: 'Cosmopolitan'),
            ingredient: Ingredient.find_by(name: 'Cranberry juice'))
Dose.create(description: '1/4 oz',
            cocktail: Cocktail.find_by(name: 'Cosmopolitan'),
            ingredient: Ingredient.find_by(name: 'Triple sec'))

# Mojito
Dose.create(description: '10 leaves',
            cocktail: Cocktail.find_by(name: 'Mojito'),
            ingredient: Ingredient.find_by(name: 'Mint'))
Dose.create(description: '1/2',
            cocktail: Cocktail.find_by(name: 'Mojito'),
            ingredient: Ingredient.find_by(name: 'Lime'))
Dose.create(description: '1.5 oz',
            cocktail: Cocktail.find_by(name: 'Mojito'),
            ingredient: Ingredient.find_by(name: 'White Rum'))
Dose.create(description: '2 tablespoons',
            cocktail: Cocktail.find_by(name: 'Mojito'),
            ingredient: Ingredient.find_by(name: 'Sugar'))
Dose.create(description: '1/2 cup',
            cocktail: Cocktail.find_by(name: 'Mojito'),
            ingredient: Ingredient.find_by(name: 'Club Soda'))

# Piña Colada
Dose.create(description: '2 oz',
            cocktail: Cocktail.find_by(name: 'Piña Colada'),
            ingredient: Ingredient.find_by(name: 'Light rum'))
Dose.create(description: '1.5 oz',
            cocktail: Cocktail.find_by(name: 'Piña Colada'),
            ingredient: Ingredient.find_by(name: 'Coconut Cream'))
Dose.create(description: '1.5 oz',
            cocktail: Cocktail.find_by(name: 'Piña Colada'),
            ingredient: Ingredient.find_by(name: 'Pineapple juice'))
Dose.create(description: '1.5 oz',
            cocktail: Cocktail.find_by(name: 'Piña Colada'),
            ingredient: Ingredient.find_by(name: 'Lime juice'))

# Gin Tonic
Dose.create(description: '2 oz',
            cocktail: Cocktail.find_by(name: 'Gin Tonic'),
            ingredient: Ingredient.find_by(name: 'Gin'))
Dose.create(description: '4 oz',
            cocktail: Cocktail.find_by(name: 'Gin Tonic'),
            ingredient: Ingredient.find_by(name: 'Carbonated water'))

# Americano
Dose.create(description: '1 oz',
            cocktail: Cocktail.find_by(name: 'Americano'),
            ingredient: Ingredient.find_by(name: 'Water'))
Dose.create(description: '1 oz',
            cocktail: Cocktail.find_by(name: 'Americano'),
            ingredient: Ingredient.find_by(name: 'Sweet Vermouth'))
Dose.create(description: '6 o',
            cocktail: Cocktail.find_by(name: 'Americano'),
            ingredient: Ingredient.find_by(name: 'Carbonated water'))

# Mai Tai
Dose.create(description: '1.5 oz',
            cocktail: Cocktail.find_by(name: 'Mai Tai'),
            ingredient: Ingredient.find_by(name: 'Rum'))
Dose.create(description: '1/2 oz',
            cocktail: Cocktail.find_by(name: 'Mai Tai'),
            ingredient: Ingredient.find_by(name: 'Lime juice'))
Dose.create(description: '.75 oz',
            cocktail: Cocktail.find_by(name: 'Mai Tai'),
            ingredient: Ingredient.find_by(name: 'Dark rum'))
Dose.create(description: '1/2 oz',
            cocktail: Cocktail.find_by(name: 'Mai Tai'),
            ingredient: Ingredient.find_by(name: 'Orange curaçao'))
Dose.create(description: '1/2 oz',
            cocktail: Cocktail.find_by(name: 'Mai Tai'),
            ingredient: Ingredient.find_by(name: 'Orgeat syrup'))

# Bloody Mary
Dose.create(description: '1.5 oz',
            cocktail: Cocktail.find_by(name: 'Bloody Mary'),
            ingredient: Ingredient.find_by(name: 'Vodka'))
Dose.create(description: '1/2 oz',
            cocktail: Cocktail.find_by(name: 'Bloody Mary'),
            ingredient: Ingredient.find_by(name: 'Lemon juice'))
Dose.create(description: '3 oz',
            cocktail: Cocktail.find_by(name: 'Bloody Mary'),
            ingredient: Ingredient.find_by(name: 'Tomato juice'))
Dose.create(description: '1 teaspoon',
            cocktail: Cocktail.find_by(name: 'Bloody Mary'),
            ingredient: Ingredient.find_by(name: 'Salt'))

# Margarita
Dose.create(description: '2 oz',
            cocktail: Cocktail.find_by(name: 'Margarita'),
            ingredient: Ingredient.find_by(name: 'Tequila'))
Dose.create(description: '1/2 oz',
            cocktail: Cocktail.find_by(name: 'Margarita'),
            ingredient: Ingredient.find_by(name: 'Lime juice'))
Dose.create(description: '1/2 oz',
            cocktail: Cocktail.find_by(name: 'Margarita'),
            ingredient: Ingredient.find_by(name: 'Sugar syrup'))
Dose.create(description: '1 oz',
            cocktail: Cocktail.find_by(name: 'Margarita'),
            ingredient: Ingredient.find_by(name: 'Sugar'))

# Whiskey Sour
Dose.create(description: '1.5 oz',
            cocktail: Cocktail.find_by(name: 'Whiskey Sour'),
            ingredient: Ingredient.find_by(name: 'Whiskey'))
Dose.create(description: '1 oz',
            cocktail: Cocktail.find_by(name: 'Whiskey Sour'),
            ingredient: Ingredient.find_by(name: 'Lemon juice'))
Dose.create(description: '1/2 oz',
            cocktail: Cocktail.find_by(name: 'Whiskey Sour'),
            ingredient: Ingredient.find_by(name: 'Sugar syrup'))

# Ti Ponch
Dose.create(description: '8 oz',
            cocktail: Cocktail.find_by(name: 'Ti Ponch'),
            ingredient: Ingredient.find_by(name: 'Dark rum'))
Dose.create(description: '4 oz',
            cocktail: Cocktail.find_by(name: 'Ti Ponch'),
            ingredient: Ingredient.find_by(name: 'Lime juice'))
Dose.create(description: '2 oz',
            cocktail: Cocktail.find_by(name: 'Ti Ponch'),
            ingredient: Ingredient.find_by(name: 'Sugar syrup'))
Dose.create(description: '1 oz',
            cocktail: Cocktail.find_by(name: 'Ti Ponch'),
            ingredient: Ingredient.find_by(name: 'Sugar'))

# Old Fashioned
Dose.create(description: '2 oz',
            cocktail: Cocktail.find_by(name: 'Old Fashioned'),
            ingredient: Ingredient.find_by(name: 'Whiskey'))
Dose.create(description: '1/2 oz',
            cocktail: Cocktail.find_by(name: 'Old Fashioned'),
            ingredient: Ingredient.find_by(name: 'Lime juice'))
Dose.create(description: '1/2 oz',
            cocktail: Cocktail.find_by(name: 'Old Fashioned'),
            ingredient: Ingredient.find_by(name: 'Sugar syrup'))
Dose.create(description: '1 oz',
            cocktail: Cocktail.find_by(name: 'Old Fashioned'),
            ingredient: Ingredient.find_by(name: 'Sugar'))
