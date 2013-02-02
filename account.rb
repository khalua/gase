class Account
  attr_accessor :name, :cash_balance, :portfolios
  def initialize(name,cash_balance)
    @name = name
    @cash_balance = cash_balance
    @portfolios = {}
  end

  def to_s
    "{@name}'s account has #{@portfolios.count} accont(s)"
  end

end
