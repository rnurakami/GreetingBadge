class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.integer :award_person_id
      t.integer :receive_person_id
      t.integer :badge_id
      t.text :comment

      t.timestamps
    end
  end
end
