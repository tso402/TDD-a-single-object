require './lib/dice.rb'
describe Dice do
  it 'a place can roll the dice' do
    expect(subject).to respond_to(:roll)
  end
end
