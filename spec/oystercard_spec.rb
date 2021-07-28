require 'oystercard'

describe Oystercard do
  let(:station){ double :station }
  let(:entry_station) { double :station }
  let(:exit_station) { double :station }

  it 'should have a balance of 0' do
    oystercard = Oystercard.new
    expect(oystercard.balance).to eq(0)
  end

  it "should top up oystercard" do
    expect {subject.top_up(5)}.to change { subject.balance }.by(5)
  end

  it "should throw error if =>£90" do
    max_limit = Oystercard::MAX_LIMIT
    subject.top_up(max_limit)
    expect{ subject.top_up 1 }.to raise_error "Reached max limit of £90"
  end

  it 'is in journey' do
    expect(subject).not_to be_in_journey
  end

  it 'can touch in' do
    subject.top_up(1)
    subject.touch_in(station)
    expect(subject).to be_in_journey
  end

  it 'can touch out' do
    subject.top_up(1)
    subject.touch_in(station)
    subject.touch_out(station)
    expect(subject).not_to be_in_journey
  end

  it 'checks if minimum fare when touching in' do
    oystercard = Oystercard.new
    expect{oystercard.touch_in(station)}.to raise_error "Minumum fare of 1"
  end

  it '#deducts minimum fare when touched out' do
    expect {subject.touch_out(station)}.to change{subject.balance}.by(-1)
  end

  it 'stores the entry station' do
    subject.top_up(1)
    subject.touch_in(station)
    expect(subject.entry_station).to eq station
  end

  it 'checks card has empty list of journey' do
    subject.list_of_journey.empty?
  end

  it 'stores the exit station' do
    subject.top_up(1)
    subject.touch_in(entry_station)
    subject.touch_out(exit_station)
    expect(subject.list_of_journey)
  end
end
