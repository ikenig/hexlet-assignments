# frozen_string_literal: true

# BEGIN
def anagramm_filter(orig, data)
  data.filter { |item| orig.chars.sort == item.chars.sort }
end
# END
