class RemoveCocktailsReferenceFromIngredients < ActiveRecord::Migration[5.1]
  def change
    remove_reference(:ingredients, :cocktail, index: true)
  end
end
