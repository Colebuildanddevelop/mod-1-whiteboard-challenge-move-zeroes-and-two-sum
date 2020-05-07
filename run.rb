def move_zeros(arr)
  count_zeros = 0 
  arr.each { |ele| 
    if ele == 0
      count_zeros += 1
    end 
  }
  arr.delete(0)
  count_zeros.times { arr << 0 }
  arr
end 

def two_sum(arr, target)
  i = 0
  arr.length.times { |ele|
    
    if arr[i+1] && (arr[i] + arr[i+1]) == target
      puts arr[i] + arr[i+1]
      return [i, i+1]
    end
    i += 1
  }
  return "none adds up"
end 

puts two_sum([2, 7, 11, 15], 33)