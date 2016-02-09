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

  def self.d (num)
    return nil if num.nil?
    num.divisors.inject(0) { |sum, i| sum += i }
  end
end

sum = 0
ancable_numbers = []
(1..10000).each do |a|
  num = Integer.d(a)
  b = Integer.d(num)
  if a == b && a != num
    ancable_numbers << a
    ancable_numbers << b
  end
end

puts ancable_numbers.uniq.inject(0) { |sum, i| sum += i }
