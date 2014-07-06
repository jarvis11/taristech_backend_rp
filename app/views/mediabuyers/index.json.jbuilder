json.array!(@mediabuyers) do |mediabuyer|
  json.extract! mediabuyer, :id, :first_name, :last_name, :password, :phone, :permission
  json.url mediabuyer_url(mediabuyer, format: :json)
end
