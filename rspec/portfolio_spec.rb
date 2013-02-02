require_relative 'spec_helper'
require_relative '../portfolio'

describe Portfolio do
  let (:portfolio) {Portfolio.new('Tech','AAPL',50)}

  describe ".new" do
    it "create an Portfolio" do
      expect(portfolio).to_not eq nil
    end
  end
end