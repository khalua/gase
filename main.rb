require 'pry-debugger'
require 'rainbow'
require 'yahoofinance'
require_relative 'exchange'
require_relative 'account'
# require_relative 'portfolio'
require_relative 'stock'
require_relative 'functions'


#test data
ga = Exchange.new('GASE')
a1 = Account.new("Tony",1_000_000)
a2 = Account.new("Aly",500_000)
s1 = Stock.new('AMZN')
s2 = Stock.new('APPL')
s3 = Stock.new('CSCO')
a1.create_portfolio("Tech","AMZN","AAPL")
a1.create_portfolio("Auto","F","GM")

a1.buy_stock('DIS',100)
a1.buy_stock('IBM',50)
a1.buy_stock('DELL',25)


response = menu
while response != 'Q'
  case response
  when '1' then add_account
  when '2' then show_account
  when '3' then buy_stock
  when '4' then sell_stock
  when '5' then create_portfolio
  when '6' then show_portfolio
  end

  response = menu
end




binding.pry-debugger
