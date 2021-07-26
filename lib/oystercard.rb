class Oystercard
attr_reader :balance

MAX_LIMIT = 90

  def initialize(balance=0)
    @balance = balance
  end

  def top_up(amount)
    fail "Reached max limit of £90" if full?
    @balance += amount
  end

  def deduct(value)
    @balance -= value
  end
  
  private
  def full?
    @balance >= MAX_LIMIT
  end

end
