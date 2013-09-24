json.array!(@players) do |player|
  json.extract! player, :first_name, :last_name, :nickname, :email, :password, :location_id, :latitude, :longitude, :avatar_url, :facebook_uid, :facebook_token, :short_bio, :gender, :birthday, :skype_name, :twitter_token, :twitter_token_secret
  json.url player_url(player, format: :json)
end
