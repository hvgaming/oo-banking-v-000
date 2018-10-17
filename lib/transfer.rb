class Transfer
  attr_accessor :sender, :receiver, :status, :balance, :amount


  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true: false
  end

  def execute_transaction
    previous_amount = 0
    if @sender.valid? && previous_amount != @amount && @sender.balance - @amount >= 0
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
      previous_amount = @amount
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
end