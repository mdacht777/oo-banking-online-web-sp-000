class Transfer
  attr_accessor :sender,:receiver,:status,:amount
  # your code here
  def initialize(sender,to,amt)
    @sender=sender
    @receiver=to
    @amount=amt
    @status='pending'
  end
  def valid?
    if @sender.valid? and @receiver.valid?
      TRUE
    else
      FALSE
    end
  end
  def execute_transaction
    puts @status
    if self.valid? and @status=='pending'
      @sender.balance-=@amount
      @receiver.balance+=@amount
      @status='complete'
    else
      "Transaction rejected. "
    end
  end
end
