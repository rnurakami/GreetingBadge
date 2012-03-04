#encoding: utf-8
class Person < ActiveRecord::Base
  has_many :prizes

  validates :name, :description, :image_url, presence: true
  validates :name, uniqueness: true

  PERSON_IMAGES  = ["person_image/Woof.gif", "person_image/RedDog.gif", "person_image/Bluehound.gif", "person_image/Pointy.gif", "person_image/Doggie.gif", "person_image/PurpGuy.gif"]

  def self.create_with_omniauth(auth)
      person = Person.new
      person.provider = auth["provider"]
      person.uid = auth["uid"]

      unless auth["info"].blank?
       person.nickname = auth["info"]["name"]
       person.name = auth["info"]["name"]
       person.description = auth["info"]["description"]
       person.image_url = auth["info"]["image"]
      end

      person.save
      return person
  end

end
