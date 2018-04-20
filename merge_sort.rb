def merge_sort(array)
  n = array.size
  return array if n < 2
  left = array[0..n/2-1]
  right = array[n/2..n-1]
  merge_sort(left)
  merge_sort(right)
  merge(left, right, array)
  array
end

def merge(left, right, array)
  i = 0
  j = 0
  k = 0
  while i < left.length && j < right.length
    if left[i] <= right[j]
      array[k] = left[i]
      i += 1
    else
      array[k] = right[j]
      j += 1
    end
    k += 1
  end
  while i < left.length
    array[k] = left[i]
    i += 1
    k += 1
  end
  while j < right.length
    array[k] = right[j]
    j += 1
    k += 1
  end
end

merge_sort((1..999999).to_a.sample(800000))
