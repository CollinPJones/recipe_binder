class Course < ActiveRecord::Base
  #Validations
  validates :name, presence: true, uniqueness: true
  #---------------

  #Associations
  #Course to Recipes Association
  has_many :recipes
end
