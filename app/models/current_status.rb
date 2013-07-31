class CurrentStatus
  include Mongoid::Document
  field :up, type: Boolean
end
