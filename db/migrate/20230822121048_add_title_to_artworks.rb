class AddTitleToArtworks < ActiveRecord::Migration[7.0]
  def change
    add_column :artworks, :title, :string
  end
end
