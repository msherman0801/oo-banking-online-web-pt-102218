require 'pry'

class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @status = "pending"
    @amount = amount
  end
  
  def valid?
<<<<<<< HEAD
    @sender.valid? && @receiver.valid?
  end 
  
  def execute_transaction
    if @status == "pending" && @sender.balance - @amount > 0
      @receiver.balance += @amount
      @sender.balance -= @amount
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer 
    if @status == "complete"
      @receiver.balance -= @amount
      @sender.balance += @amount
      @status = "reversed"
    end
  end
=======
    if @sender.valid? && @receiver.valid?
      true 
    else 
      false 
    end 
  end 
  
  def execute_transaction
    if self.valid? && @status == "pending"
      binding.pry
      @receiver.balance += @amount
      @sender.balance -= @amount
      @status = "complete"
    else 
      "Transaction rejected. Please check your balance."
    end 
  end
  
>>>>>>> 5402fb55badb889f0c30c594b0ab08205f2e6e3a
end
