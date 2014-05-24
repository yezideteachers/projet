class Scene < ActiveRecord::Base


	belong_to :chapitres
 	has_and_belongs_to_many :personnes
end
