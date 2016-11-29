class Recipe < ActiveRecord::Base
  #Validations
  validates :user_id, presence: true
  validates :name, presence: true, uniqueness: {scope: :user_id}
  #----------------

  #Associations
  #Recipe Ingredient to Recipe Association
  has_many :recipe_ingredients
  #Recipes to Course Assocaition
  belongs_to :course
end
