class Direction < ActiveRecord::Base
  #Validations
  validates :recipe_id, presence: true
  validates :step, presence: true
  validates :description, presence: true, uniqueness: { scope: :recipe_id}
  #---------------

  #Associations
  #Direction to Recipe Association
  belongs_to :recipe
  #---------------

end
