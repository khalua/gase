def menu
  puts `clear`
  puts "*** General Assembly Stock Exchange ***\n\n"
  puts 'Account Management'
  puts '1 : Add Account'
  puts '2 : Show stocks in an account'
  puts 'Buy/Sell'
  puts '3 : Buy Stocks'
  puts '4 : Sell Stocks'
  puts 'Portfolio Management'
  puts '5 : Create Portfolio'
  puts '6 : Show Portfolio'
  puts "Q : Quit\n\n"
  print '--> '.color('#ff3300')
  gets.chomp
end