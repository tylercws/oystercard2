require 'journey'
require 'station'

describe Journey do
  it 'starts a journey' do
    expect(subject.begin_journey("Cornbrook",1)).to eq(["Cornbrook",1])
  end

  it 'ends a journey' do
    expect(subject.end_journey("Deansgate",2)).to eq(["Deansgate",2])
  end

  it 'calculating fare' do
    journey = Journey.new
    journey.begin_journey("Cornbrook",1)
    journey.end_journey("Deansgate",2)
    expect(journey.fare).to eq (1)
  end

  it 'know if a journey is complete' do
    
  end
end