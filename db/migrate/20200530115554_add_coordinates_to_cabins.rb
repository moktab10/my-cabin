class AddCoordinatesToCabins < ActiveRecord::Migration[6.0]
  def change
    add_column :cabins, :latitude, :float
    add_column :cabins, :longitude, :float
  end
end
