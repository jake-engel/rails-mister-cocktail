require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

serialized_ingredients = open(url).string
ingredients = JSON.parse(serialized_ingredients)['drinks'].map do |ingredient|
  ingredient.values
end
ingredients.flatten!

ingredients.each do |ingredient|
  Ingredient.create(name: ingredient)
end
