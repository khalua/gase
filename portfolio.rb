class Portfolio
  def initialize(name,symbol,quantity)
    @name = []
    @symbol = symbol
    @quantity = quantity
  end

  def to_s
    "The #{@name} porfolio has "
  end


end
