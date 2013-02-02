class Portfolio
  def initialize(name,ticker,quantity)
    @name = {}
    @ticker = ticker
  end

  def to_s
    "The #{@name} porfolio has #{@ticker.count} symbols"
  end


end
