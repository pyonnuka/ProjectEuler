require 'date'

class Date
  def begin_month?
    begin_month_date = Date.parse("1/#{month}/#{year}")
    self == begin_month_date
  end
end

BEGIN_DATE = Date.parse('1/1/1901')
END_DATE   = Date.parse('31/12/2000')

date = BEGIN_DATE
sunday_count = 0
while (date < END_DATE) do
  sunday_count += 1 if date.sunday? && date.begin_month?
  date += 1
end

puts sunday_count
