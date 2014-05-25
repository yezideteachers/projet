class Scene < ActiveRecord::Base

	belongs_to :chapitre
	has_and_belongs_to_many :personnes
	#has_and_belongs_to_many :editors , :class_name => "Personne"
	#has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  	#has_many :followed_users, through: :relationships, source: :followed
end
