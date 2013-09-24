class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :nickname
      t.string :rules
      t.integer :parent_id
      t.integer :creator_id
      t.text :description

      t.timestamps
    end
  end
end
