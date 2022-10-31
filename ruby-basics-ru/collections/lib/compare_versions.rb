# frozen_string_literal: true

# rubocop:disable Metrics/AbcSize

# BEGIN
def compare_versions(version1, version2)
  return 0 if version1 == version2

  splited = [version1.split('.').map(&:to_i), version2.split('.').map(&:to_i)]
  counter = 0
  res = 0

  while counter < [splited[0].length, splited[1].length].max
    if splited[0][counter].to_i < splited[1][counter].to_i
      res = -1
      break
    elsif splited[0][counter].to_i > splited[1][counter].to_i
      res = 1
      break
    end
    counter += 1
  end
  res
end
# END

# rubocop:enable Metrics/AbcSize
