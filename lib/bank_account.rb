require 'pry'
class BankAccount
  attr_accessor :balance,:status
  def initialize(name)
    @name=name
    @balance=1000
    @status="open"
    puts self.name==name
    # binding.pry
  end
  def name
    binding.pry
  end
end
