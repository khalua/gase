require 'byebug'
require 'rainbow'
require 'yahoofinance'
require_relative 'exchange'
require_relative 'account'
require_relative 'stock'
require_relative 'functions'


# # #test data
# $exchange.accounts["Tony"] = Account.new("Tony",1_000_000)
# $exchange.accounts["Aly"] = Account.new("Aly",500_000)

# $exchange.accounts["Tony"].buy_stock('DIS',100)
# $exchange.accounts["Tony"].buy_stock('IBM',1)
# $exchange.accounts["Tony"].buy_stock('DELL',1)
# $exchange.accounts["Tony"].buy_stock('AAPL',1)
# $exchange.accounts["Tony"].buy_stock('F',100)
# $exchange.accounts["Tony"].buy_stock('GM',50)

# $exchange.accounts["Tony"].create_portfolio('Tech',['IBM','AAPL','DELL'])


response = menu
while response != 'Q'
  case response
  when '0' then $exchange.show_all_accounts; gets
  when '1' then add_account
  when '2' then show_account
  when '3' then buy_stock
  when '4' then sell_stock
  when '5' then create_portfolio
  when '6' then show_portfolio
  end

  response = menu
end




byebug
