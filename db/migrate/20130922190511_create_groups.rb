class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :type_id
      t.integer :parent_id
      t.text :description
      t.integer :member_count
      t.integer :location_id
      t.integer :privacy

      t.timestamps
    end
  end
end
