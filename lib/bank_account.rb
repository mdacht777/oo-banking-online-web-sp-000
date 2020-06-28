require 'pry'
class BankAccount
  attr_accessor :balance,:status
  attr_reader :name
  def initialize(name)
    @name=name
    @balance=1000
    @status="open"
  end
  def deposit(amt)
    @balance+=amt
  end
  def display_balance
    "Your Balance is $#{@balance}."
  end
end
