# frozen_string_literal: true

require 'forwardable'
require 'uri'

# BEGIN
class Url
  extend Forwardable
  include Comparable

  attr_reader :uri

  def initialize(address)
    @uri = URI(address)
  end

  def_delegators :@uri, :scheme, :host, :query

  def <=>(other)
    @uri.to_s <=> other.uri.to_s
  end

  def query_params
    return {} if query.nil?

    query.split('&').to_h { |item| [item.split('=').first.to_sym, item.split('=').last] }
  end

  def query_param(key, default = nil)
    query_params.fetch(key, default)
  end
end
# END
