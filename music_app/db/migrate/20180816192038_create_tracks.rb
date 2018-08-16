class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :title, null: false
      t.integer :ord, null: false
      t.text :lyrics
      t.integer :album_id, null:false

      t.timestamps
    end

    add_index :tracks, :album_id, unique: true

  end
end
