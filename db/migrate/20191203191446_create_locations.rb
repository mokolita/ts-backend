class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :content
      t.string :map_coords
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
