def intersect(array1, array2)
  result = []

  return result if array1.empty? || array2.empty?

  array1.each do |el1|
    array2.each_with_index do |el2, el2index|
      next unless el1 == el2
      result << el1
      array2.delete_at(el2index)
      break
    end
  end

  result
end
