class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end
  
  def valid?
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end
  
  def execute_transaction(amount)
    @sender -= @amount
    @receiver += @amount
  end
  
  def reverse_transfer
    
  end
  
end
