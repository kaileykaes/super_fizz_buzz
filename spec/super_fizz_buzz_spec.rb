require './lib/super_fizz_buzz'

RSpec.describe SuperFizzBuzz do
  before(:each) do
    @super_fizz = SuperFizzBuzz.new
  end

  describe '#initialize'
    it 'exists' do
      expect(@super_fizz).to be_a SuperFizzBuzz
    end
  end

  describe '#output' do 
    it 'outputs strings based on input' do 
      expect(@super_fizz.output(8)).to eq('8')
      expect(@super_fizz.output(15)).to eq('FizzBuzz')
    end
  end

  describe '#output_range' do 
    it 'outputs strings based on input' do 
      expect(@super_fizz.output_range(8, 15)).to eq([
        "8", "Fizz", "Buzz", "11", 
        "Fizz", "13", "Super", "FizzBuzz"
      ])
    end
  end
