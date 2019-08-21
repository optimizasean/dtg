require "spec_helper"

RSpec.describe Dtg do
  it "Sets the Timezone to UTC if not already set" do
    expect(Time.zone).to eq(ActiveSupport::TimeZone.new("UTC"))
  end

  it "does not override the timezone if set" do
    Time.zone = "HST"
    expect(Time.zone).to eq(ActiveSupport::TimeZone.new("HST"))
  end

  describe ".dtg" do
    it "replies as active if gem is loaded" do
      expect(described_class.dtg).to eq("DTG gem is active")
    end
  end
end
