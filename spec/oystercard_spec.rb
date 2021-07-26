require 'oystercard'

describe Oystercard do
  it 'should have a balance of 0' do
    oystercard = Oystercard.new
    expect(oystercard.balance).to eq(0)
  end

  it 'expect to top up' do
    oystercard = Oystercard.new
    expect(oystercard).to respond_to(:top_up).with(1).argument
  end
end
