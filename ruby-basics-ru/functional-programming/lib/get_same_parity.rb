# frozen_string_literal: true

# BEGIN
def get_same_parity(data)
  data.select { |item| data.first.even? ? item.even? : item.odd? }
end
# END
