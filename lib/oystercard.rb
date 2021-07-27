require "journey"
class Oystercard
attr_reader :balance

MAX_LIMIT = 90
MINIMUM_FARE = 1

  def initialize(balance=0,journey=Journey)
    @balance = balance
    @journey = Journey.new
  end

  def top_up(amount)
    fail "Reached max limit of £90" if full?
    @balance += amount
  end

  def deduct(value)
    @balance -= value
  end

  def touch_in
    fail "Minumum fare of 1" if underfare?
    @journey.touch_in
  end

  def touch_out
    @journey.touch_out
  end

  def in_journey?
    @journey.in_journey?
  end

  private
  def full?
    @balance >= MAX_LIMIT
  end

  def underfare?
    @balance < MINIMUM_FARE
  end
end

oc = Oystercard.new()
p oc.touch_out
