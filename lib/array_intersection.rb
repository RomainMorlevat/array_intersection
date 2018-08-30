def intersect(array1, array2)
  result = []

  return result if array1.empty? || array2.empty?

  if array1.length > array2.length
    shortest_array = array2
    longest_array = array1
  else
    shortest_array = array1
    longest_array = array2
  end

  longest_array.each do |el1|
    break if shortest_array.empty?
    next unless shortest_array.include?(el1)
    result << el1
    shortest_array.delete_at(shortest_array.find_index(el1))
  end

  result
end
