def fib(n, arr = [0, 1])
  return [0] if n == 0
  (n-1).times do
    arr.push(arr[-1] + arr[-2])
  end
  arr
end

def fib_rec(n)
  return [0] if n == 0
  return [0,1] if n == 1
  fib_recur(n-1) << fib_recur(n-1)[-1] + fib_recur(n-1)[-2]
end