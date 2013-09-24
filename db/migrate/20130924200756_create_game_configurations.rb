class CreateGameConfigurations < ActiveRecord::Migration
  def change
    create_table :game_configurations do |t|
      t.integer :game_id
      t.integer :match_id
      t.integer :author_id
      t.string :metadata
      t.string :title

      t.timestamps
    end
  end
end
