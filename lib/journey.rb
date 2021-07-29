class Journey
  def initialize()


  end

  def begin_journey(entry_station,zone)
    @entry_station = Station.new(entry_station,zone)
    @entry_station.station_array
  end
end