class Microlocation
  include Mongoid::Document

  embedded_in :address, inverse_of: :microlocations
  
  field :uuid, type: String
  field :major_id, type: Integer
  field :minor_id, type: Integer
  field :name, type: String
  field :descriptor_tag, type: String
  field :action_tag, type: String
  field :price_tag, type: String
end
