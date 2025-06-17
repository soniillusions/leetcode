# @param {Integer[]} arr
# @return {Boolean}
def valid_mountain_array(arr)
  return false if arr.size < 3

  i = 0
  n = arr.size - 1

  while i < n && arr[i] < arr[i + 1]
    i += 1
  end

  return false if i == 0 || i == n

  while i < n && arr[i] > arr[i + 1]
    i += 1
  end

  i == n
end

arr = [0,3,2,1]
puts valid_mountain_array(arr)