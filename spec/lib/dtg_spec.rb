require "spec_helper"

RSpec.describe Dtg do
  describe ".dtg" do
    it "replies as active if gem is loaded" do
      expect(described_class.dtg).to match("DTG gem is active running version: *")
    end
  end
end
