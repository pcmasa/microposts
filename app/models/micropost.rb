class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255}
  
  has_many :reverses_of_favorite, class_name: "Favorite", dependent: :destroy
  
  
end
