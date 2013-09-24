class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.integer :player_id
      t.integer :group_id
      t.integer :game_id
      t.string :game_metadata
      t.integer :elo_score
      t.integer :match_count
      t.decimal :win_ratio
      t.integer :win_count
      t.integer :loss_count
      t.string :match_id_list
      t.string :scope_group_id

      t.timestamps
    end
  end
end
