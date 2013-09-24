json.array!(@groups) do |group|
  json.extract! group, :name, :type_id, :parent_id, :description, :member_count, :location_id, :privacy
  json.url group_url(group, format: :json)
end
