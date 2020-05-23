class CreateCabins < ActiveRecord::Migration[6.0]
  def change
    create_table :cabins do |t|
      t.string :localisation
      t.string :theme
      t.string :title
      t.string :description
      t.string :photo
      t.integer :price_per_night
      t.integer :beds
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
