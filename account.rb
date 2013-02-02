class Account
  attr_accessor :name, :cash_balance, :portfolios
  def initialize(name,cash_balance)
    @name = name
    @cash_balance = cash_balance
    @stocks = {}
    @portfolios = {}
  end

  def buy_stock(ticker)
    @stocks[ticker] = Stock.new(ticker).get_price
    binding.pry
  end



  def to_s
    "#{@name}'s account has #{@stocks.count} stock(s) and #{@portfolios.count} portfolio(s)."
  end

  def buy_stock(symbol)

  end

end
