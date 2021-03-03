class RemovePhotoFromArtwork < ActiveRecord::Migration[6.1]
  def change
    change_table :artworks do |t|
      t.remove :photo
    end
  end
end
