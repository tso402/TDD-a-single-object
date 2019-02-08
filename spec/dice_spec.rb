require './lib/dice.rb'
describe Dice do
  it 'a place can roll the dice' do
    expect(subject).to respond_to(:roll)
  end

  it 'returns a number between 1 and 6 when the player rolls the dice' do
    expect(subject.roll).to be_between(1,6)
  end

  it 'returns a random number between 1 and 6 when the player rolls the dice' do
    resultsA = []
    resultsB = []
    50.times {resultsA << subject.roll}
    50.times {resultsB << subject.roll}
    expect(resultsA).not_to equal(resultsB)
  end

  it 'allows multiple dice to be rolled at the same time' do
    expect(subject.roller(3).count).to eq 3
  end

  



end
