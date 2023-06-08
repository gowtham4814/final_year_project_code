class Try
  include Mongoid::Document
  include Mongoid::Timestamps

  field :data, type: Hash

  index(created_at: -1)
end
