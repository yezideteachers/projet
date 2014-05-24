class CreateScenesPersonnesJoinTable < ActiveRecord::Migration
  class ScenesPersonnesJoinTable < ActiveRecord::Migration
  #def change
 # end
def self.up
create_table :scenes_personnes, :id => false do |t|
t.references :scene, :personne # Pour créer les clés etrangères
end
add_index :scenes_personnes, [:scene_id, :personne_id] # Optionnel
end
def self.down
drop_table :scenes_personnes
end

end

end
