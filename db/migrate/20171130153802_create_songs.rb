class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.integer :votes
      t.string :link
      t.references :playlist, foreign_key: true

      t.timestamps
    end
  end
end
