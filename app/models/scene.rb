class Scene < ActiveRecord::Base

	belongs_to :chapitre
	has_and_belongs_to_many :personnes
	default_scope -> { order('created_at DESC') }
	validates :periode, presence: true
end
