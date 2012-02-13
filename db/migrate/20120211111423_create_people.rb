class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :description
      t.string :email
      t.string :image_url

      t.timestamps
    end
  end
end
