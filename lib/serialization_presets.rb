require "active_support"

module SerializationPresets
  extend ActiveSupport::Concern

  class Preset
    undef_method :methods
    Instructions = [:skip_instruct, :dasherize, :skip_types, :root_in_json].freeze

    def initialize
      @options = {}
    end

    def method_missing(method, *args)
      method = :include if method == :includes
      @options[method] = Instructions.include?(method) ? args.first : args
      @options
    end
  end


  module ClassMethods
    def serialization_preset(set = :default, &block)
      presets = read_inheritable_attribute(:presets) || {}

      presets[set] = Preset.new.instance_eval(&block)

      write_inheritable_attribute :presets, presets
    end
  end

  module InstanceMethods
    def serializable_hash(options)
      options ||= {}
      preset_name = options.has_key?(:preset) ? options.delete(:preset) : :default
      preset = self.class.read_inheritable_attribute(:presets)[preset_name] || {} rescue {}
      preset = preset.deep_merge(options) if options
      super(preset)
    end
  end
end