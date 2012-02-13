class Prize < ActiveRecord::Base
  belongs_to :award_person, :class_name=>'Person', :foreign_key=>'award_person_id'
  belongs_to :receive_person, :class_name=>'Person', :foreign_key=>'receive_person_id'
  belongs_to :badge
end
