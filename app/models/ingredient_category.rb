class IngredientCategory < ActiveRecord::Base
  #Validations
  validates :name, presence: true, uniqueness: true
  #----------------

  #Associations
  #Ingredient Category to Ingredients Associations
  has_many :ingredients
end
