json.array!(@locations) do |location|
  json.extract! location, :name, :nickname, :latitude, :longitude, :radius, :address, :parent_id, :type_id, :kml_url
  json.url location_url(location, format: :json)
end
