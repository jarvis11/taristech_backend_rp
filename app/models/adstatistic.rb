class Adstatistic
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :content, inverse_of: :adstatistics


  field :type, type: String
end
