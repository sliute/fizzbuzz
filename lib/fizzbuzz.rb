def fizzbuzz(number)
  raise ArgumentError, "Please enter a number only!" if !number.is_a?(Integer)
  if number % 3 == 0 && number % 5 == 0
    'fizzbuzz'
  elsif number % 3 == 0
    'fizz'
  elsif number % 5 == 0
    'buzz'
  else
    number
  end
end

=begin
#running fizzbuzz for the 1..100 range in irb:
1.upto(100) { |x| puts fizzbuzz(x) }
=end

=begin
# run fizzbuzz on a single line file:
p (1..100).map { |i| a = "#{"fizz" if i % 3 == 0}#{"buzz" if i % 5 ==0}" ; a.empty? ? i : a }
=end
