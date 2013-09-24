class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :game_id
      t.timestamp :date_finished
      t.boolean :is_active
      t.time :running_time
      t.integer :turn_count
      t.integer :location_id
      t.integer :winner_player_id
      t.integer :winner_group_id

      t.timestamps
    end
  end
end
