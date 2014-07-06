json.array!(@targets) do |target|
  json.extract! target, :id, :venue_name, :venue_street, :venue_city, :venue_state, :venue_zip, :descriptor_tag, :action_tag, :price_tag
  json.url target_url(target, format: :json)
end
