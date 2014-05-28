class Anecdote < ActiveRecord::Base

	belongs_to :chapitre
	default_scope -> { order('created_at DESC') }
	validates :sujet,  presence: true
end
