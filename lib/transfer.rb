require 'pry'


class Transfer
  attr_accessor :sender, :status, :bank_account

  def initialize(sender, status="pending", receiver)
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end

  def receiver=(receiver)
    bidning.pry
    self. receiver = Bankaccount
  end

  def receiver
    @receiver
  end


end
