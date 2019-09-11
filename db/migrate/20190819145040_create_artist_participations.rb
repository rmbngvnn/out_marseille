class CreateArtistParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_participations do |t|
      t.references :artist, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
