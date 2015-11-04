nums = (1..20)
yakusuus = []
def small_yakusuu(a)
  return nil if a == 1

  (2..a).each do |n|
    return n if a % n == 0
  end

  return nil
end

loop do
  temp = nums
  flag = false
  temp.each do |num|
    yakusuu = small_yakusuu(num)
    if yakusuu
      yakusuus << yakusuu
      flag = true
      nums = nums.map do |n|
        n = n / yakusuu if n % yakusuu == 0
        n
      end
      break
    end
  end

  break unless flag
end

ans = 1
nums.each{|n| ans *= n}
yakusuus.each{|n| ans *= n}
p ans
