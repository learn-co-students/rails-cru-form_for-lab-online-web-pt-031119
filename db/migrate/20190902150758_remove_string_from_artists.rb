class RemoveStringFromArtists < ActiveRecord::Migration[5.0]
  def change
    remove_column :artists, :string, :string
  end
end