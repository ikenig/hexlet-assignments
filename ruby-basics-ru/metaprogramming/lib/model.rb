# frozen_string_literal: true

# BEGIN
module Model
  def self.included(base)
    base.extend(ModelMethods)
  end

  def initialize(attrs = {})
    attrs.filter { |a, _| methods.include?(a) }.each do |attr, val|
      public_send("#{attr}=", val)
    end
  end

  def attributes
    instance_variables.each_with_object({}) do |attr, acc|
      acc[attr.to_s.tr('@', '').to_sym] = instance_variable_get(attr)
    end
  end

  module ModelMethods
    def attribute(name, options = {})
      return if options[:type].nil?

      define_method name do
        instance_variable_get "@#{name}"
      end

      define_method "#{name}=" do |value|
        instance_variable_set "@#{name}", options[:type] == :datetime ? DateTime.parse(value) : value
      end
    end
  end
end
# END
