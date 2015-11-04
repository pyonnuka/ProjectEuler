PRIME_FACTOR = 600851475143

def solve

end

num = 3
remaining_prime_factor = PRIME_FACTOR
loop do
  break if num > PRIME_FACTOR / 2
  while remaining_prime_factor % num == 0
    remaining_prime_factor /= num
  end

  if remaining_prime_factor == 1
    puts num
    break
  end

  num += 2
end
