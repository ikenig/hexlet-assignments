# frozen_string_literal: true

def make_censored(text, stop_words)
  # BEGIN
  text.split.map { |item| stop_words.index(item).nil? ? item : '$#%!' }.join(' ')
  # END
end
