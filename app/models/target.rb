class Target
  include Mongoid::Document

  embedded_in :content, inverse_of: :targets
  
  field :venue_name, type: String
  field :venue_street, type: String
  field :venue_city, type: String
  field :venue_state, type: String
  field :venue_zip, type: Integer
  field :descriptor_tag, type: String
  field :action_tag, type: String
  field :price_tag, type: String
end
