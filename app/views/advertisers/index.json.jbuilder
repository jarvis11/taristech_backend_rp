json.array!(@advertisers) do |advertiser|
  json.extract! advertiser, :id, :name, :address, :verification
  json.url advertiser_url(advertiser, format: :json)
end
