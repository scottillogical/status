class Message
  include Mongoid::Document
  include Mongoid::Timestamps
  field :contents, type: String
end
