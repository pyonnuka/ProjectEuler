MAX_NUMBER = 1000000

class Integer

  def divisors
    divisor_list = []
    (1..self / 2).each do |num|
      if num == 0
        nil
      elsif self % num.to_f == 0
        divisor_list << num
      end
    end

    divisor_list
  end

  def count_amicable_chain
    num = self
    list = [num]
    loop do
      return 0 if num > MAX_NUMBER
      num = Integer.d(num)
      if list.include?(num)
        return list.count
      else
        list << num
      end
    end
  end

  def self.d (num)
    return nil if num.nil?
    num.divisors.inject(0) { |sum, i| sum += i }
  end
end


max_chain_number = 0
max_chain_count = 0

(1...MAX_NUMBER).each do |num|
  next unless num % 2 == 0
  puts "now=#{num}"2
  amicable_chain_count = num.count_amicable_chain
  if amicable_chain_count > max_chain_count
    max_chain_number = num
    max_chain_count  = amicable_chain_count
    puts max_chain_count
  end
end

puts max_chain_count
puts max_chain_number
