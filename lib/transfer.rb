require 'pry'


class Transfer
  attr_accessor :sender, :status, :bank_account
  attr_reader :receiver

  def initialize(sender, status="pending", receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def receiver=(receiver)
    bidning.pry
    self. receiver = Bankaccount
  end


end
