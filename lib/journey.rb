class Journey
  def initialize
    @in_journey = false
  end

  def in_journey?
    !!(Oystercard::entry_station)
  end

  def touch_in
    @in_journey = true
  end

  def touch_out
    @in_journey = false
  end
end
