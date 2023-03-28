require './lib/super_fizz_buzz'

RSpec.describe SuperFizzBuzz do
  describe '#initialize' do
    it 'exists' do
      super_fizz = SuperFizzBuzz.new
      expect(super_fizz).to be_a SuperFizzBuzz
    end
  end

  describe '#output' do 
    it 'outputs based on input' do 
      super_fizz = SuperFizzBuzz.new
      expect(super_fizz.output(8)).to eq('8')
      expect(super_fizz.output(15)).to eq('FizzBuzz')
    end
  end

  describe '#output_range' do 
    it 'outputs strings based on input' do 
      super_fizz = SuperFizzBuzz.new
      expect(super_fizz.output_range(8, 15)).to eq([
        "8", "Fizz", "Buzz", "11", 
        "Fizz", "13", "Super", "FizzBuzz"
      ])
    end
  end

  describe '#input_adjustment' do 
    it 'adjusts input' do 
      super_fizz = SuperFizzBuzz.new
      expect(super_fizz.input_adjustment('1, 3')).to eq([1, 3])
      expect(super_fizz.input_adjustment('3')).to eq(3)
    end
  end
end