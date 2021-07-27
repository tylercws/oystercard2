require "journey"
class Oystercard
attr_reader :balance, :entry_station

MAX_LIMIT = 90
MINIMUM_FARE = 1

  def initialize(balance=0)
    @balance = balance
    @in_journey = false
    @entry_station
  end

  def top_up(amount)
    fail "Reached max limit of £90" if full?
    @balance += amount
  end

  def touch_in(station)
    fail "Minumum fare of 1" if underfare?
    @entry_station = station
  end

  def touch_out
    deduct(MINIMUM_FARE)
    @entry_station = nil
  end

  def in_journey?
    !!entry_station
  end


  private
  def full?
    @balance >= MAX_LIMIT
  end

  def underfare?
    @balance < MINIMUM_FARE
  end

  def deduct(value)
    @balance -= value
  end

end

oc = Oystercard.new()
p oc.touch_out
