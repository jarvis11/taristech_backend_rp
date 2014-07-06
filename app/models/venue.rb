class Venue
  include Mongoid::Document

  embeds_many :addresses
  
  field :name, type: String
end
