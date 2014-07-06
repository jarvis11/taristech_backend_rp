class Address
  include Mongoid::Document

  embedded_in :venue, inverse_of: :addresses
  embeds_many :microlocations
  
  field :street, type: String
  field :city, type: String
  field :state, type: String
  field :zip, type: Integer
end
