class RemoveStringFromGenres < ActiveRecord::Migration[5.0]
  def change
    remove_column :genres, :string, :string
  end
end