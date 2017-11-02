puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients and cocktails...'


Ingredient.create(name: "Rhum")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Sparkling water")
Ingredient.create(name: "Coca")
Ingredient.create(name: "Sprite")
Ingredient.create(name: "Lemon")
Ingredient.create(name: "Ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "Sugar")



puts 'Finished!'
