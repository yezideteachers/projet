class Chapitre < ActiveRecord::Base

	has_many :anecdotes
  	has_many :scenes
end
