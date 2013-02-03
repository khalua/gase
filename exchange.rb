class Exchange
  attr_accessor :name, :accounts
  def initialize(name)
    @name = name
    @accounts = {}
  end

  def to_s
    "The #{@name} Exchange has #{@accounts.count} accounts."
  end

  def show_all_accounts
    @accounts.empty? ? (puts "No accounts set up") : (puts "#{@accounts.keys.join(', ')}")
  end
end

$exchange = Exchange.new('GASE')