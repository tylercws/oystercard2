class Journey
  def initialize()
    @entry_station
    @exit_station  
  end

  def begin_journey(entry_station,zone)
    @entry_station = Station.new(entry_station,zone)
    @entry_station.station_array
  end

  def end_journey(exit_station, zone)
    @exit_station = Station.new(exit_station,zone)
    # @entry_station = nil
    @exit_station.station_array
  end

  def fare
    if @entry_station != nil
      Oystercard::MINIMUM_FARE
    else
      6 
    end   
  end  
  
  
end