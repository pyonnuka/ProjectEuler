require 'Prime'

def calculate_over_five_hundred_triangle_number
  triangle_number  = 0
  (1..Float::INFINITY).each do |num|
    triangle_number += num
    primes = Prime.prime_division(triangle_number)
    divisor_number = primes.inject(1) { |triangle_number, prime| triangle_number *= prime[1]+1 }

    return triangle_number if divisor_number > 500
  end
end

puts calculate_over_five_hundred_triangle_number
