class Personne < ActiveRecord::Base
	#belongs_to :chapitre
	attr_accessor :nom
	has_and_belongs_to_many :editors,  :class_name => "Scene" 
	#has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  #	has_many :followed_users, through: :relationships, source: :followed

end


