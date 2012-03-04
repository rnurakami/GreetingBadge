class Person < ActiveRecord::Base
  has_many :prizes

  validates :name, :description, :image_url, presence: true
  validates :name, uniqueness: true

  PERSON_IMAGES  = ["person_image/Woof.gif", "person_image/RedDog.gif", "person_image/Bluehound.gif", "person_image/Pointy.gif", "person_image/Doggie.gif", "person_image/PurpGuy.gif"]

  def self.create_with_omniauth(auth)
    create! do |person|
      person.provider = auth["provider"]
      person.id = auth["uid"]

      person.name = auth["info"]["nickname"]
      person.description = ["info"]["description"]
      person.image_url = ["info"]["image"]
    end
  end

end
