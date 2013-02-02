class Account
  attr_accessor :name, :cash_balance, :book, :portfolios
  def initialize(name,cash_balance)
    @name = name
    @cash_balance = cash_balance
    @book = {} #ticker, initial_price, quantity
    @portfolios = {}
  end

  def buy_stock(ticker, quantity)
    s1 = Stock.new(ticker)
    s1.set_price
    @book[ticker] = {ticker: ticker, initial_price: s1.price, quantity: quantity}
    cost = quantity * s1.price
    @cash_balance = @cash_balance - cost
  end

  def stocks_worth
    @book.keys.each do |x|
      puts "#{x} is #{Stock.new(x).get_price}"
    end
  end


  def show_book
    @book.each {|k,v|  }
    @book.values {|v| puts "#{v}"}
  end

  def to_s
    "#{@name}'s account has #{@book.count} stock(s) and #{@portfolios.count} portfolio(s) and a cash balance of #{@cash_balance}."
  end

end
