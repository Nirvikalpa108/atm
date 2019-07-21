require 'date'

class Atm

  attr_accessor :transactions

  def initialize(transactions = [])
    @transactions = transactions
  end

  def statement
    transactions
  end

  def deposit(amount)
    transactions << {date: Date.today, amount: amount, type: :deposit, balance: amount }
  end
end
