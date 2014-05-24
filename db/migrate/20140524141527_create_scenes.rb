class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.text :recit
      t.string :lieu
      t.string :periode
      t.integer :id_anecdote

      t.timestamps
    end
  end
end
