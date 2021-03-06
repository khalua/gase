def menu
  puts `clear`
  puts "*** General Assembly Stock Exchange ***\n\n"
  puts 'Account Management'
  puts '0 : Show Accounts'
  puts '1 : Add Account'
  puts '2 : Show stocks in an account'
  puts 'Buy/Sell'
  puts '3 : Buy Stocks'
  puts '4 : Sell Stocks'
  puts 'Portfolio Management'
  puts '5 : Create Portfoli o'
  puts '6 : Show Portfolio'
  puts "Q : Quit\n\n"
  print Rainbow("-->").red
  gets.chomp
end
  
def add_account
  puts "Enter name of new account: "
  print Rainbow("-->").red  
  name = gets.chomp
  puts "Enter opening cash balance: "
  print Rainbow("-->").red
  balance = gets.to_f
  $exchange.accounts[name] = Account.new(name, balance)
  puts "Account Added"
  gets
end

def show_account  
  puts "Account name? "
  $exchange.show_all_accounts
  print Rainbow("-->").red
  name = gets.chomp
  $exchange.accounts[name].show_book
  gets
end

def buy_stock
  puts 'Buy Stock'
  puts '---------'  
  puts "What Account? "
  $exchange.show_all_accounts
  print Rainbow("-->").red  
  name = gets.chomp
  puts "Stock name? "
  print Rainbow("-->").red
  ticker = gets.chomp
  puts "Quantity? " 
  quantity = gets.to_i
  $exchange.accounts[name].buy_stock(ticker, quantity)
  print Rainbow("-->").red
  puts "Press enter to continue"
  gets
end
  
def sell_stock
  puts "Account? "
  print Rainbow("-->").red
  name = gets.chomp 
  $exchange.accounts[name].show_book
  puts "Which stock?"
  print Rainbow("-->").red
  #puts "#{$exchange.accounts[name].book.keys.join(', ')}"
  ticker = gets.chomp
  puts "Quantity? "
  print Rainbow("-->").red
  quantity = gets.to_i
  $exchange.accounts[name].sell_stock(ticker,quantity)
  puts "Press enter to continue"
  gets
end

def create_portfolio  
  puts "Account? "
  $exchange.show_all_accounts
  print Rainbow("-->").red  
  name = gets.chomp
  puts "Name for new portfolio"
  print Rainbow("-->").red
  portfolio = gets.chomp  
  $exchange.accounts[name].show_book
  puts "What stocks do you want in this portfolio? (space separated)"
  print Rainbow("-->").red
  tickers = gets.chomp.split
  $exchange.accounts[name].create_portfolio(portfolio, tickers)
  puts "Press enter to continue"
  gets
end


def show_portfolio  
  puts "Account? "
  $exchange.show_all_accounts
  print Rainbow("-->").red
  name = gets.chomp
  $exchange.accounts[name]  .show_all_portfolios

  puts "Select portfolio to display"
  print Rainbow("-->").red
  portfolio = gets.chomp.to_sym
  $exchange.accounts[name].portfolio_balance(portfolio)

  puts "Press enter to continue"
  gets
end
