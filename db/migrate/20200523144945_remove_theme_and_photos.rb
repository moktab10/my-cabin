class RemoveThemeAndPhotos < ActiveRecord::Migration[6.0]
  def change
    remove_column :cabins, :photo
    remove_column :cabins, :theme
  end
end
