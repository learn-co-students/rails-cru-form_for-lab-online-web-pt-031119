class RemoveTextFromArtists < ActiveRecord::Migration[5.0]
  def change
    remove_column :artists, :text, :text
  end
end