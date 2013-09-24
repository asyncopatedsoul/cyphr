class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :nickname
      t.integer :latitude
      t.integer :longitude
      t.integer :radius
      t.text :address
      t.integer :parent_id
      t.integer :type_id
      t.string :kml_url

      t.timestamps
    end
  end
end
