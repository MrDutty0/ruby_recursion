# frozen_string_literal: true

def iterative_fib(n)
  fib_seq = []

  fib_seq << 0
  return fib_seq if n == 1

  fib_seq << 1
  return fib_seq if n == 2

  (2...n).each do |idx|
    fib_seq << fib_seq[idx - 1] + fib_seq[idx - 2]
  end
  fib_seq
end

def rec_fib(n)
  return [0] if n == 1
  return [0, 1] if n == 2

  arr = rec_fib(n - 1)
  arr << arr[-2] + arr[-1]
end

p iterative_fib(8) # [0, 1, 1, 2, 3, 5, 8, 13]
p rec_fib(8)       # [0, 1, 1, 2, 3, 5, 8, 13]
