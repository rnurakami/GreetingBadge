class Person < ActiveRecord::Base
  has_many :prizes

  validates :name, :description, :image_url, presence: true
  validates :name, uniqueness: true

  PERSON_IMAGES  = ["person_image/Woof.gif", "person_image/RedDog.gif", "person_image/Bluehound.gif", "person_image/Pointy.gif", "person_image/Doggie.gif", "person_image/PurpGuy.gif"]
end
