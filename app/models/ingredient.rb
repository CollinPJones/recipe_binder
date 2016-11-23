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

  #Ingredients to Measurement Unit Association
  belongs_to :purchase_unit, class_name: "MeasurementUnit", foreign_key: "purchase_measurement_unit_id"

  #Ingredients to Measurement Association
  belongs_to :measurement, through: :purchase_unit
end
