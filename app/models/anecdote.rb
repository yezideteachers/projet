class Anecdote < ActiveRecord::Base

	#attr_accessor :sujet, :theme
	belongs_to :chapitre
end
