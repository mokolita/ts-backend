class UpdateLocationsTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :latitude
    remove_column :locations, :longitude
    add_column :locations, :address, :string
  end
end
