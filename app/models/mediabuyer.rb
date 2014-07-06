class Mediabuyer
  include Mongoid::Document

  embedded_in :advertiser, inverse_of: :mediabuyers

  field :first_name, type: String
  field :last_name, type: String
  field :password, type: String
  field :phone, type: String
  field :permission, type: String
end
