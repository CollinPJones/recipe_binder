class Ingredient < ActiveRecord::Base
  #Validations
  validates :name, presence: true, uniqueness: true
  validates :purchase_container, presence: true
  validates :purchase_quanitity, presence: true
  validates :category_id, presence: true
  validates :purchase_measurement_unit_id, presence: true
  #----------------

  #Associations
  #Ingredients to Ingredient Category Association
  belongs_to :category, class_name: "IngredientCategory", foreign_key: "category_id"
end
