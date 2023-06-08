class Detect
  include Mongoid::Document
  include Mongoid::Timestamps

  field :_id, type: String
  field :safe, type: Integer
  field :no_mask, type: Integer
  field :not_safe, type: Integer
  field :unconcious, type: Integer
  field :no_helmet, type: Integer
  field :fire, type: Integer
  field :timestamp, type: DateTime
end
