class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :author_id
      t.integer :type_id
      t.text :text
      t.integer :turn_id
      t.integer :player_id
      t.integer :match_id
      t.integer :game_id
      t.integer :privacy

      t.timestamps
    end
  end
end
