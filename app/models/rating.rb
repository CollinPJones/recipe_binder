class Rating < ApplicationRecord
  #Validations
  validates :recipe_id, presence: true
  validates :user_id, presence: true, uniqueness: { scope: :recipe_id}
  validates :score, presence: true, numericality: { greater_than_or_equal_to: 1.0, less_than_or_equal_to: 5.0}
  #----------------

  #Associations
  #Rating to User Association
  belongs_to :user
  
  #Rating to Recipe Association
  belongs_to :recipe
  #----------------
end
