require_relative 'bank_account'

class CheckingAccount < BankAccount

  TARIFA=8

  def deposit(amount)
    @balance += amount
    log_transaction('Deposit', amount)
  end

  def withdraw(amount)
    if(@balance-amount+CREDIT_LINE>=0)
      @balance -= amount
    end
    log_transaction('Withdrawal', amount)
  end

  def transfer(account, amount)
    if(@balance>=amount+TARIFA)
      
      self.withdraw(amount+TARIFA)
      account.deposit(amount)
      
    end 
  end

end
