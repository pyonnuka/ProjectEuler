class Integer
  def to_word
    number = self
    number_to_word_table = {
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen",
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }

    return "one thousand" if number == 1000
    return number_to_word_table[number] if number <= 20

    if number >= 100
      str = "#{number_to_word_table[number/100]} hundred"

      number %= 100
      return str if number == 0


      if number <= 20
        str += " and #{number_to_word_table[number]}"
        return  str
      end

      str += " and #{number_to_word_table[(number / 10) * 10]}"
      number %= 10
      return str if number == 0

      str += "-#{number_to_word_table[number]}"
    else
      str = "#{number_to_word_table[(number / 10) * 10]}"
      number %= 10
      return str if number == 0

      str += "-#{number_to_word_table[number]}"
    end
    str
  end
end

puts (1..1000).inject(0) { |sum, num| sum += num.to_word.gsub(/[\s\-]/,'').length }
