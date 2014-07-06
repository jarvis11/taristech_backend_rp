json.array!(@adstatistics) do |adstatistic|
  json.extract! adstatistic, :id, :type
  json.url adstatistic_url(adstatistic, format: :json)
end
