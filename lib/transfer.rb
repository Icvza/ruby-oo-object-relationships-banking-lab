require 'pry'


class Transfer
  attr_accessor :sender, :status, :bank_account, :amount
  attr_reader :receiver

  def initialize(sender, status="pending", receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def receiver=(receiver)
    self. receiver = Bankaccount
  end

  def valid?
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    if valid? && @sender.balance >= @amount && @status == "pending"
    @sender.balance -= @amount
    @receiver.deposit(@amount) 
    @status = "complete"
    else
    @status = "rejected"
    "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if @status == "complete" 
      @receiver.balance -= @amount
      @sender.deposit(@amount) 
      @status = "reversed"
    end
  end




end
