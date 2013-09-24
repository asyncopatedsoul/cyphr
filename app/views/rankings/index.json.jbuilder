json.array!(@rankings) do |ranking|
  json.extract! ranking, :player_id, :group_id, :game_id, :game_metadata, :elo_score, :match_count, :win_ratio, :win_count, :loss_count, :match_id_list, :scope_group_id
  json.url ranking_url(ranking, format: :json)
end
