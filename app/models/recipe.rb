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

  #Recipes to User Association
  belongs_to :user

  #Recipe to Rating Association
  has_many :ratings

  #Recipe to Bookmark Association
  has_many :bookmarks
  #----------------

  #Recipe to Direction Association
  has_many :directions
  #----------------

  #Image Uploader
  mount_uploader :image, ImageUploader
  #----------------
  def average_rating
    Rating.where(recipe_id: self.id).average("score")
  end
end
