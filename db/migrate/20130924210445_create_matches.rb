class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :game_id
      t.timestamp :date_started
      t.timestamp :date_finished
      t.integer :status_id
      t.time :running_time
      t.integer :turn_count
      t.integer :location_id
      t.integer :zone_id
      t.integer :final_player_id
      t.string :player_id_list
      t.string :score_list
      t.boolean :is_valid

      t.timestamps
    end
  end
end
