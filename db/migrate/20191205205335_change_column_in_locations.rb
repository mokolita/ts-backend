class ChangeColumnInLocations < ActiveRecord::Migration[6.0]
  def change
    rename_column :locations, :map_coords, :latitude
    add_column :locations, :longitude, :string
  end
end
