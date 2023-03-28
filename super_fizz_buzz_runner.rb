require './lib/super_fizz_buzz'

super_fizz = SuperFizzBuzz.new

puts 'Welcome to SuperFizzBuzz! Enter a number or a range. If entering a range, 
use the format, "x, y" where x is the first number in the range, and y is the 
last number in the range.'

input = gets.chomp
the_real_input = super_fizz.input_adjustment(input)

if the_real_input.class == Integer
  puts super_fizz.output(the_real_input)
elsif the_real_input.class == Array
  puts super_fizz.output_range(the_real_input.first, the_real_input.last)
else
  puts 'Say what?!'
end


