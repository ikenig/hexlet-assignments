# frozen_string_literal: true

# BEGIN
def build_query_string(hash)
  hash.keys.sort.map { |key| [key, hash[key]].join('=') }.join('&')
end
# END
