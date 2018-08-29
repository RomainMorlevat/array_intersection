def intersect(array_1, array_2)
  hash_1 = {}
  hash_2 = {}

  array_1.each do |el|
    if hash_1[el]
      hash_1[el] = hash_1[el] + 1
    else
      hash_1[el] = 1
    end
  end

  array_2.each do |el|
    if hash_2[el]
      hash_2[el] = hash_2[el] + 1
    else
      hash_2[el] = 1
    end
  end

  result = []

  hash_1.each do |key, value|
    if hash_2.has_key?(key)
      if hash_1[key] > hash_2[key]
        min_value = hash_2[key]
      else
        min_value = hash_1[key]
      end

      min_value.times do
        result << key
      end
    end
  end

  result
end

p intersect([], [1])
p intersect([1], [])
p intersect([1], [1])
p intersect([1], [2])
p intersect([1, 1, 4, 5], [1, 4, 7])
p intersect([1, 4, 5], [1, 4, 4, 7])
p intersect([1, 1, 1, 4, 5], [1, 1, 4, 7])
p intersect([2, 3, 4, 4, 5, 10], [1, 1, 2, 4, 4, 7])
