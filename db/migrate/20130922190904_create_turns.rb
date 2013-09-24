class CreateTurns < ActiveRecord::Migration
  def change
    create_table :turns do |t|
      t.integer :game_id
      t.integer :match_id
      t.integer :player_id
      t.integer :group_id
      t.time :running_time
      t.timestamp :date_finished
      t.integer :score
      t.integer :delta
      t.string :metadata
      t.boolean :is_active

      t.timestamps
    end
  end
end
