json.array!(@microlocations) do |microlocation|
  json.extract! microlocation, :id, :uuid, :major_id, :minor_id, :name, :descriptor_tag, :action_tag, :price_tag
  json.url microlocation_url(microlocation, format: :json)
end
