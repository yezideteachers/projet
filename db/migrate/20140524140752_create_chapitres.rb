class CreateChapitres < ActiveRecord::Migration
  def change
    create_table :chapitres do |t|
      t.integer :chapitre_id
      t.string :titre

      t.timestamps
    end
  end
end
