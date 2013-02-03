class Account
  attr_accessor :name, :cash_balance, :book, :portfolios
  def initialize(name,cash_balance)
    @name = name
    @cash_balance = cash_balance
    @book = {} #ticker, initial_price, quantity
    @portfolios = {} #name,
  end

  def buy_stock(ticker, quantity)
    s1 = Stock.new(ticker)
    s1.set_price
    @book[ticker] = {ticker: ticker, initial_price: s1.price, quantity: quantity}
    cost = quantity * s1.price
    @cash_balance = @cash_balance - cost
  end

    def sell_stock(ticker, quantity)
    s1 = Stock.new(ticker)
    s1.set_price
    starting_qty = @book[ticker][:quantity]
    @book[ticker][:quantity] = quantity - starting_qty
    cost = quantity * s1.price
    @cash_balance = @cash_balance + cost
    end


  def value(ticker)
    (@book[ticker][:quantity] * Stock.new(ticker).get_price).round(2)
  end

  def show_book
    puts "Your book"
    @book.keys.each do |ticker|
      puts "#{@book[ticker][:quantity]} shares of #{ticker} current price is $#{Stock.new(ticker).get_price} and value is $#{value(ticker)}"
      end
    end

  def create_portfolio(name, *tickers)
      name.to_sym
      tickers.to_a
      @portfolios[name] = tickers
      puts "Portfolios: #{@portfolios}"
  end


  def portfolio_balance(name)
    # puts "What portfolio? #{@portfolios.keys}"
    # name = gets.chomp
    puts "#{@portfolios[name]}"
    @portfolios[name].map { |x| puts "#{Stock.new(x).show_price}"  }
  end


  def to_s
    "#{@name}'s account has #{@book.count} stock(s) and #{@portfolios.count} portfolio(s) and a cash balance of $#{@cash_balance.round(2)}."
  end

end
