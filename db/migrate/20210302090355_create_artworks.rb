class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.references :user, null: false, foreign_key: true
      t.string :category
      t.string :name
      t.string :description
      t.integer :rate
      t.string :photo

      t.timestamps
    end
  end
end
