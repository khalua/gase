class Exchange
  attr_accessor :name, :accounts
  def initialize(name)
    @name = name
    @accounts = {}
  end

  def to_s
    "The #{@name} Exchange has #{@accounts.count} accounts."
  end

end