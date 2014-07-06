class Content
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :advertiser
  embeds_many :targets
  embeds_many :adstatistics

  field :advertiser_id, type: String
  field :type, type: String
  field :budget, type: Float
  field :bid_type, type: String
  field :bid_amount, type: Float
  field :notification_title, type: String
  field :notification_body, type: String
  field :page_title, type: String
  field :page_body, type: String

end
