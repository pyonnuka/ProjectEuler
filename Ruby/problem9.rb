(1..998).each do |a|
  (1..998).each do |b|
    (1..998).each do |c|
      next unless a + b + c == 1000

      a_double = a * a
      b_double = b * b
      c_double = c * c
      if [a,b,c].max == a && a_double == b_double + c_double ||
         [a,b,c].max == b && b_double == a_double + c_double ||
         [a,b,c].max == c && c_double == a_double + b_double
        puts a * b * c
      end
    end
  end
end
