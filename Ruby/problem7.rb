XST = 10001

def defs(xst)
  if xst == 1
    return 2
  end

  count = 1
  (3..Float::INFINITY).each do |num|
    next if num % 2 == 0

    is_prime = true
    (2...num/2).each do |n|
      next if n % 2 == 0

      if num % n == 0
        is_prime = false
      end
    end

    count += 1 if is_prime
    if count == XST
      return num
    end
  end
end

puts defs(XST)
