require_relative 'checking_account'

class SalaryAccount < CheckingAccount
  def initialize
    super
    @monthly_fee    = MONTHLY_FEE/2
  end

  def transfer(account, amount)
  end

end