class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :name
      t.integer :point
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
