# frozen_string_literal: true

# BEGIN
def count_by_years(users)
  users.filter { |u| u[:gender] == 'male' }.each_with_object({}) do |u, acc|
    acc[u[:birthday].split('-').first] ||= 0
    acc[u[:birthday].split('-').first] += 1
  end
end
# END
