module MongoRecord
  extend ActiveSupport::Concern

  included do
    include Mongoid::Document
    include Mongoid::Timestamps
    include SerializationPresets  # make sure this happens after Mongoid::Document
  end
end