class Transfer
  attr_accessor :sender,:receiver
  # your code here
  def initialize(sender,to,amt)
    @sender=sender
    @receiver=to
  end
end
