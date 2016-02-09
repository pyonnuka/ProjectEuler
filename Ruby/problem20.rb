class Integer
  def factorial
    return 1 if self == 0
    self * (self - 1).factorial
  end
end

puts 100.factorial.to_s.split('').map(&:to_i).inject(0) { |sum, i| sum += i }
