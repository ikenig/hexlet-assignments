# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return if start > stop

  res = start.upto(stop).to_a.map do |item|
    if (item % 3).zero? && (item % 5).zero?
      'FizzBuzz'
    elsif (item % 3).zero?
      'Fizz'
    elsif (item % 5).zero?
      'Buzz'
    else
      item
    end
  end
  res.join(' ')
end
# END
