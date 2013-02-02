require 'pry-debugger'
require 'rainbow'
require 'yahoofinance'
require_relative 'exchange'
require_relative 'account'
require_relative 'portfolio'
require_relative 'stock'


#test data
ga = Exchange.new('GASE')
a1 = Account.new("Tony",1_000_000)
a2 = Account.new("Aly",500_000)
s1 = Stock.new('AMZN')
s2 = Stock.new('APPL')
s3 = Stock.new('CSCO')

a1.buy_stock('DIS',100)
a1.buy_stock('IBM',50)
a1.buy_stock('DELL',25)

class Main
end

binding.pry-debugger
