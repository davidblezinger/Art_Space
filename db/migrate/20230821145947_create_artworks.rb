class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.references :user, null: false, foreign_key: true
      t.float :price
      t.string :category
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
