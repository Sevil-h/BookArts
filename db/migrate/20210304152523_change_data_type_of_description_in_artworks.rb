class ChangeDataTypeOfDescriptionInArtworks < ActiveRecord::Migration[6.1]
  def change
    change_table :artworks do |t|
      t.remove :description
      t.text :description
    end
  end
end
