class Personne < ActiveRecord::Base
	#belongs_to :chapitre
	has_and_belongs_to_many :scenes

end


