require 'journey'
require 'station'

describe Journey do
  it 'starts a journey' do
    expect(subject.begin_journey("Cornbrook",1)).to eq(["Cornbrook",1])
  end

  it 'ends a journey' do
    
  end

  it 'calculating fare' do
    
  end

  it 'know if a journey is complete' do
    
  end
end