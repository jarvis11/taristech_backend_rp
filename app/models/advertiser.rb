class Advertiser
  include Mongoid::Document

  embeds_many :mediabuyers
  has_many :contents

  field :name, type: String
  field :address, type: String
  field :verification, type: Mongoid::Boolean
end
