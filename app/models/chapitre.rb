class Chapitre < ActiveRecord::Base
	has_many :scenes , source: :recit #, :dependent => :destroy
	has_many :anecdotes , source: :sujet , :dependent => :destroy

	validates :titre, :chapitre_id, presence: true, uniqueness: true

end
