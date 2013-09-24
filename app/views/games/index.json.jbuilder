json.array!(@games) do |game|
  json.extract! game, :name, :nickname, :rules, :parent_id, :creator_id, :description
  json.url game_url(game, format: :json)
end
