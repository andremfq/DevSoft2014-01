require_relative 'checking_account'

class StudentAccount < CheckingAccount

  def withdraw(amount)
    if(@balance-amount>=0)
      @balance -= amount
    end
    log_transaction('Withdrawal', amount)
  end

    def initialize
    super
    @monthly_fee    =0
  end
end
