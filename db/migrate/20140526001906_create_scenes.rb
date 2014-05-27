class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.text :recit
      t.string :lieu
      t.string :periode
      t.integer :chapitre_id

      t.timestamps
    end
  end
end
