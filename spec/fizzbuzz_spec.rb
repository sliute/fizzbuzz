require_relative '../lib/fizzbuzz'

describe 'fizzbuzz' do
  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
  end
  it 'returns "buzz" when passed 5' do
    expect(fizzbuzz(5)).to eq 'buzz'
  end
  it 'returns "fizzbuzz" when passed 15' do
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
  end
  it 'returns "number" when passed number not mulitple of 3 or 5' do
    expect(fizzbuzz(17)).to eq 17
  end
  it 'returns non-number error when passed a non-number' do
    expect{ fizzbuzz('a string') }.to raise_error(ArgumentError, "Please enter a number only!")
    expect{ fizzbuzz([1, 2]) }.to raise_error(ArgumentError, "Please enter a number only!")
    expect{ fizzbuzz({a: 'a', b: "b"}) }.to raise_error(ArgumentError, "Please enter a number only!")
    expect{ fizzbuzz(:asterisk) }.to raise_error(ArgumentError, "Please enter a number only!")
  end
  it 'returns wrong number of arguments when passed no argument' do
    expect{ fizzbuzz() }.to raise_error(ArgumentError)
  end
  it 'returns wrong number of arguments error when passed two or more arguments' do
    expect{ fizzbuzz(1,2,3,4) }.to raise_error(ArgumentError)
  end

end
