# frozen_string_literal: true

def merge_sort(arr)
  # require 'pry-byebug'; binding.pry
  return arr if arr.size <= 1

  middle = arr.size / 2

  left_half = merge_sort(arr[0...middle])
  right_half = merge_sort(arr[middle..])

  merge(left_half, right_half)
end

def merge(left_half, right_half)
  l = 0
  r = 0

  sorted = []

  while r < right_half.size && l < left_half.size
    if right_half[r] > left_half[l]
      sorted << left_half[l]
      l += 1
    else
      sorted << right_half[r]
      r += 1
    end
  end

  sorted += right_half[r..] unless r == right_half.size
  sorted += left_half[l..] unless l == left_half.size

  sorted
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1]) # [0, 1, 1, 2, 3, 5, 8, 13]
p merge_sort([105, 79, 100, 110])       # [79, 100, 105, 110]