class Classification
  include Mongoid::Document
  include Mongoid::Timestamps

  field :class_name, type: String
  field :class_count, type: Integer

  embedded_in :detection
end