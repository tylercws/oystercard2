require 'oystercard'

describe Oystercard do
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

  it 'should deduct spending' do
    max_limit = Oystercard::MAX_LIMIT
    subject.top_up(max_limit)
    expect(subject.deduct 10).to eq(80)
  end 

end
