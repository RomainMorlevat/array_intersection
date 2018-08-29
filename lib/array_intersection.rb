def intersect(array1, array2)
  hash1 = {}
  hash2 = {}

  array1.each do |el|
    hash1[el] = if hash1[el]
                  hash1[el] + 1
                else
                  1
                end
  end

  array2.each do |el|
    hash2[el] = if hash2[el]
                  hash2[el] + 1
                else
                  1
                end
  end

  result = []

  hash1.each do |key, _value|
    next unless hash2.key?(key)

    min_value = if hash1[key] > hash2[key]
                  hash2[key]
                else
                  hash1[key]
                end

    min_value.times do
      result << key
    end
  end

  result
end
