class Transfer
  attr_accessor :sender,:receiver,:status
  # your code here
  def initialize(sender,to,amt)
    @sender=sender
    @receiver=to
    @status='pending'
  end
end
