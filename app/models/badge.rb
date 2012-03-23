class Badge < ActiveRecord::Base
  has_many :prizes, :dependent => :destroy

  validates :name, :point, :description, presence: true
  validates :name, :image_url, uniqueness: true
  validates :point, numericality: {greater_than_or_equal_to: 0}


  BADGE_IMAGES = ["badge_image/Diamond Square.gif","badge_image/Emerald Square.gif","badge_image/Ruby Square.gif","badge_image/Sapphire Square.gif","badge_image/Princess Heart.gif"]

end
