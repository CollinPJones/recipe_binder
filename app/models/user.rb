class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #Validations
  validates :username, presence: true

  #Associations
  #User to Recipes Associations
  has_many :recipes

  #User to Ratings Association
  has_many :ratings

  #Ties Recipe ratings to User
  has_many :recipe_ratings, through: :recipes, source: :ratings

  def cook_book_rating
    self.recipe_ratings.average("score")
  end
end
