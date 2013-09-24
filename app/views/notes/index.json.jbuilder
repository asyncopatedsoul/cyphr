json.array!(@notes) do |note|
  json.extract! note, :author_id, :type_id, :text, :turn_id, :player_id, :match_id, :game_id, :privacy
  json.url note_url(note, format: :json)
end
