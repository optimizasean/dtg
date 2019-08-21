require "spec_helper"

RSpec.describe Dtg do
  describe ".dtg" do
    it "replies as active if gem is loaded" do
      expect(described_class.dtg).to eq("DTG gem is active")
    end
  end
end
