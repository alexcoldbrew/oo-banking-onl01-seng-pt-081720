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
  
  def execute_transaction
    if sender.balance < amount
      self.status = 'rejected'
      "Transaction rejected. Please check your account balance."

    elsif self.status != 'complete'
      sender.balance -= amount
      receiver.balance += amount
      self.status = 'complete'
    end
  end
  
  def reverse_transfer
    
  end
  
end
