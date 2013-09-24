json.array!(@turns) do |turn|
  json.extract! turn, :game_id, :match_id, :player_id, :group_id, :running_time, :date_finished, :score, :delta, :metadata, :is_active
  json.url turn_url(turn, format: :json)
end
