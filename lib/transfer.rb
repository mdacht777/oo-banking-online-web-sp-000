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
    
  end
end
