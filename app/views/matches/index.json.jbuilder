json.array!(@matches) do |match|
  json.extract! match, :game_id, :date_finished, :is_active, :running_time, :turn_count, :location_id, :winner_player_id, :winner_group_id
  json.url match_url(match, format: :json)
end
