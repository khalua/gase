require_relative 'spec_helper'
require_relative '../exchange'

describe Exchange do
  let (:exchange) {Exchange.new('GASE')}

  describe ".new" do
    it "create a Exchange object" do
      expect(exchange).to_not eq nil
    end
    it "has no accounts" do
      expect(exchange.accounts.count).to eq 0
    end
  end

  describe "#name" do
    it "has a name" do
      expect(exchange.name).to eq 'GASE'
    end
  end




end
