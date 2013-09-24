json.array!(@game_configurations) do |game_configuration|
  json.extract! game_configuration, :game_id, :match_id, :author_id, :metadata, :title
  json.url game_configuration_url(game_configuration, format: :json)
end
