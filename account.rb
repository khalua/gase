class Account
  attr_accessor :name, :cash_balance, :book, :portfolios
  def initialize(name,cash_balance)
    @name = name
    @cash_balance = cash_balance
    @book = {} #ticker, initial_price, quantity
    @portfolios = {} #name
  end

  def buy_stock(ticker, quantity)
    price = Stock.new(ticker).price
    @book[ticker] = {ticker: ticker, initial_price: price, quantity: quantity}
    cost = quantity * price
    @cash_balance = @cash_balance - cost
    puts "#{quantity} shares of #{ticker} bought at $#{price} each."
    puts "Total cost #{cost.round(2)}."
    puts "New acccount balance $#{@cash_balance}"
  end

  def sell_stock(ticker, quantity)
    price = Stock.new(ticker).price
    @book[ticker] = {ticker: ticker, initial_price: price, quantity: quantity}
    cost = quantity * price
    @cash_balance = @cash_balance + cost
    puts "#{quantity} shares of #{ticker} sold at $#{price} each."
    puts "Total cost $#{cost.round(2)}."
    puts "New acccount balance $#{@cash_balance}"
  end

  def value(ticker)
    (@book[ticker][:quantity] * Stock.new(ticker).get_price).round(2)
  end

  def show_book
    if @book.empty?
      puts "Empty account"
    else
      puts "Current holdings"
      puts "________________"
      @book.keys.each do |ticker|
        puts "#{@book[ticker][:quantity]} shares of #{ticker} current price is $#{Stock.new(ticker).get_price} and value is $#{value(ticker)}"
      end
      puts "________________"
      puts "Cash Balance: $#{@cash_balance}"
      puts "Stock Value: NEED HERE"
    end
  end


  def create_portfolio(name, tickers)
    @portfolios[name.to_sym] = tickers
    puts "Portfolio #{@portfolios} created."
  end


  def show_all_portfolios
    if @portfolios.empty?
      puts "No Portfolios set up"
    else
      puts "There are the portfolios for #{@name} "
      puts "#{@portfolios.keys.join(', ')}"
    end
  end


  def portfolio_balance(name)
    @total = 0
    portfolios[name].map do |ticker|
      @total = @total + (@book[ticker][:quantity] * Stock.new(ticker).price)
      puts "#{ticker} qty: #{@book[ticker][:quantity]}"
    end
    puts "Total value of portfolio $#{@total.round(2)}"
  end


  def to_s
    "#{@name}'s account has #{@book.count} stock(s) and #{@portfolios.count} portfolio(s) and a cash balance of $#{@cash_balance.round(2)}."
  end

end
