require_relative 'spec_helper'
require_relative '../account'

describe Account do
  let (:account) {Account.new('Tony',1_000_000)}

  describe ".new" do
    it "create an Account object" do
      expect(account).to_not eq nil
    end
    it "should have an empty portfolio" do
      expect(account.portfolios.count).to eq 0
    end
  end

  describe "#buy_stock" do
    it "should buy a stock at current price" do
      account.buy_stock('AMZN',50)
      expect(account.book['AMZN'].ticker).to eq 'AMZN'
    end
  end

end