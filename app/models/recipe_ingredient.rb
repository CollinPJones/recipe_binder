class RecipeIngredient < ActiveRecord::Base
  #Validations
  validates :recipe_id, presence: true
  validates :ingredient_id, presence: true, uniqueness: {scope: :recipe_id}
  validates :quantity, presence: true
  validates :measurement_unit_id, presence: true
  #----------------

  #Associations
  #Recipe Ingredient to Recipe Association
  belongs_to :recipe

  #Recipe Ingredient to Ingredient Association
  belongs_to :ingredient

  #Recipe Ingredient to Measurement Unit Association
  belongs_to :measurement_unit


end
