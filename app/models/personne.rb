class Personne < ActiveRecord::Base

	has_and_belongs_to_many :scenes#,  :class_name => "Scene" 
	#has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  #	has_many :followed_users, through: :relationships, source: :followed


  validates :nom,  presence: true,length: { maximum: 45 }, uniqueness: true

end


