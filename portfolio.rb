class Portfolio
  attr_accessor :name, :tickers
  def initialize(name,tickers)
    @name = name
    @tickers = []
  end

  def to_s
    "The #{@name} porfolio has #{@tickers.count} symbols"
  end


end
