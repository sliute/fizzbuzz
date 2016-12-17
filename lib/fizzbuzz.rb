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
