#encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Badge.delete_all
    
Badge.create(
  name: "サファイアバッヂ",
  point: 1,
  description: "どんどあげよう",
  image_url: "badge_image/Sapphire Square.gif"
)

Badge.create(
  name: "ルビーバッヂ",
  point: 5,
  description: "good job!",
  image_url: "badge_image/Ruby Square.gif"
)
    
Badge.create(
  name: "エメラルドバッヂ",
  point: 10,
  description: "気づきを与えてくれた",
  image_url: "badge_image/Emerald Square.gif"
)
Badge.create(
  name: "ダイヤモンドバッヂ",
  point: 20,
  description: "感謝のきもちでいっぱいにされた",
  image_url: "badge_image/Diamond Square.gif"
)
    
Badge.create(
  name: "ハートバッヂ",
  point: 50,
  description: "キュンキュンした",
  image_url: "badge_image/Princess Heart.gif"
)

