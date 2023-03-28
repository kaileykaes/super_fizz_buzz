class SuperFizzBuzz
    

  def output(num)
    if num % 5 == 0 && num % 3 == 0 && num % 7 == 0
      return 'SuperFizzBuzz'
    elsif num % 3 == 0 && num % 7 == 0 && num % 5 != 0
      return 'SuperFizz' 
    elsif num % 5 == 0 && num % 7 == 0 && num % 3 != 0 
      return 'SuperBuzz' 
    elsif num % 3 == 0 && num % 5 == 0 && num % 7 != 0
      return 'FizzBuzz'
    elsif num % 5 != 0 && num % 7 != 0 && num % 3 == 0 
      return 'Fizz'
    elsif num % 7 != 0 && num % 3 != 0 && num % 5 == 0 
      return 'Buzz'
    elsif num % 7 == 0 && num % 3 != 0 && num % 5 != 0
      return 'Super'
    else
      return num.to_s
    end
  end

  def output_range(num_1, num_2)
    range_outputs = []
    num_1.upto(num_2).each do |num|
      if num % 5 == 0 && num % 3 == 0 && num % 7 == 0
        range_outputs << 'SuperFizzBuzz'
      elsif num % 3 == 0 && num % 7 == 0 && num % 5 != 0
        range_outputs << 'SuperFizz' 
      elsif num % 5 == 0 && num % 7 == 0 && num % 3 != 0 
        range_outputs << 'SuperBuzz' 
      elsif num % 3 == 0 && num % 5 == 0 && num % 7 != 0
        range_outputs << 'FizzBuzz'
      elsif num % 5 != 0 && num % 7 != 0 && num % 3 == 0 
        range_outputs << 'Fizz'
      elsif num % 7 != 0 && num % 3 != 0 && num % 5 == 0 
        range_outputs << 'Buzz'
      elsif num % 7 == 0 && num % 3 != 0 && num % 5 != 0
        range_outputs << 'Super'
      else
        range_outputs << num.to_s
      end
    end
    range_outputs
  end


#helpers

  def input_adjustment(input)
    # require 'pry'; binding.pry
    if input.length == 1
      input = input.to_i
    elsif
      input.length > 1
      input = input.delete(',').split(' ')
      inputs = input.map! do |ins|
          ins.to_i
      end
      inputs
    end
  end
end