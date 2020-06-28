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
    if @sender.balance < @amount
      @status = "rejected"
      "Transaction rejected. Please check your account balance."

    elsif @status == "complete"
      "Transaction was already excuted"
    else
      @sender.deposit( @amount * -1 ) 
      @receiver.deposit( @amount )
      @status = "complete"
    end
  end

  def reverse_transfer
    if @status == "complete"
      @sender.deposit( @amount ) 
      @receiver.deposit( @amount * -1)
      @status = "reversed"
    end
  end
end
