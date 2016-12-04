class Bookmark < ApplicationRecord
  #Validations
  validates :recipe_id, presence: true
  validates :user_id, presence: true, uniqueness: { scope: :recipe_id}
  #---------------

  #Associations
  #Bookmark to User Association
  belongs_to :user

  #Bookmark to Recipe Association
  belongs_to :recipe
  #---------------
end
