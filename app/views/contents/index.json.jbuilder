json.array!(@contents) do |content|
  json.extract! content, :id, :advertiser_id, :type, :budget, :bid_type, :bid_amount, :notification_title, :notification_body, :page_title, :page_body
  json.url content_url(content, format: :json)
end
