# frozen_string_literal: true

# BEGIN
def reverse(str)
  str.each_char.reduce('') { |char, acc| acc + char }
end
# END
