class Ingredient < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :purchase_container, presence: true
  validates :purchase_quanitity, presence: true
  validates :category_id, presence: true
  validates :purchase_measurement_unit_id, presence: true
end
