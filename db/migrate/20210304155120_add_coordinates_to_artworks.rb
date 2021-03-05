class AddCoordinatesToArtworks < ActiveRecord::Migration[6.1]
  def change
    add_column :artworks, :latitude, :float
    add_column :artworks, :longitude, :float
    add_column :artworks, :address, :string
  end
end
