class CreatePersonneSceneJoinTable < ActiveRecord::Migration
	def up
		create_table :personnes_scenes,  :id => false do |t|
			t.integer "personne_id"
			t.integer "scene_id"
			
        #t.timestamps
    end

    add_index :personnes_scenes,  [:personne_id, :scene_id], unique: true
end
def down
	drop_table :personnes_scenes
end
end
