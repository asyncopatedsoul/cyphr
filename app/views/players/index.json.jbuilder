json.array!(@players) do |player|
  json.extract! player, :first_name, :last_name, :nickname, :email, :password, :location_id, :latitude, :longitude, :avatar_url, :fb_uid, :fb_token, :short_bio
  json.url player_url(player, format: :json)
end
