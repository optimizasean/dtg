RSpec.describe Dtg do
  it "has a version number" do
    expect(Dtg::VERSION).not_to be nil
  end

  describe ".dtg" do
    it "replies as active if gem is loaded" do
      expect(described_class.dtg).to match("DTG gem is active running version: *")
    end
  end
end
