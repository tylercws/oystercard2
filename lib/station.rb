class Station
  attr_reader :name, :zone
  def initialize(name,zone)
    @name = name
    @zone = zone
  end

  def station_array
    arr = [@name,@zone]
  end
end

cb = Station.new("Cornbrook",1)
p cb.station_array