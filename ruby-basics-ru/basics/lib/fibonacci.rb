# frozen_string_literal: true

# BEGIN
def fibonacci(n_th)
  return if n_th.negative?

  res = [0, 1]
  n_th.times { |_i| res << (res[-2] + res[-1]) }
  res[n_th]
end
# END
