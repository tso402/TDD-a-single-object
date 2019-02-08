require './lib/dice.rb'
describe Dice do
  it 'a place can roll the dice' do
    expect(subject).to respond_to(:roll)
  end

  it 'returns a number between 1 and 6 when the player rolls the dice' do
    expect(subject.roll).to be_between(1,6)
  end
end
