require_relative 'spec_helper'
require_relative '../stock'

describe Stock do
  let (:stock) {Stock.new('AAPL')}

  describe ".new" do
    it "create a Stock object" do
      expect(stock).to_not eq nil
    end
  end

  describe "#set_price" do
    it "should set the last price" do
      stock.set_price
      expect(stock.price).to_not eq 0
    end

  end

end