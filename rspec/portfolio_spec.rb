require_relative 'spec_helper'
require_relative '../portfolio'

describe Portfolio do
  let (:portfolio) {Portfolio.new('Tech',['AAPL','AMZN','CSCO'])}

  describe ".new" do
    it "create a Portfolio" do
      expect(portfolio).to_not eq nil
    end
  end


end