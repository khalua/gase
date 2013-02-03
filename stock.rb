class Stock
  attr_accessor :ticker, :price, :get_price
  def initialize (ticker)
    @ticker = ticker
    @price = price
  end

  def to_s
    "#{@ticker} : #{@price}"
  end


  def get_price
    begin
      YahooFinance::get_quotes(YahooFinance::StandardQuote, "#{@ticker}")["#{@ticker}"].lastTrade
    rescue
      puts "Oh oh. Yahoo out to lunch"
      retry
    end
  end

  def set_price
    @price = get_price
  end

  def show_price
    set_price
    "#{@ticker} : #{@price}"
  end
end
