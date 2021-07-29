require 'station'

describe Station do
  let(:station){Station.new("Cornbrook",1)}
  it 'know the name' do
    expect(station.name).to eq ("Cornbrook")
  end

  it 'knows the zone' do
    expect(station.zone).to eq (1)
  end
end