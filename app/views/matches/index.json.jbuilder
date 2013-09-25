json.array!(@matches) do |match|
  json.extract! match, :game_id, :game_config_id, :date_started, :date_finished, :status_id, :running_time, :turn_count, :location_id, :zone_id, :final_player_id, :group_id_list, :player_id_list, :score_list, :group_scope_list, :is_valid
  json.url match_url(match, format: :json)
end
