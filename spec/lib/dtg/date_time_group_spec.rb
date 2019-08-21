require "spec_helper"

RSpec.describe DateTimeGroup do
  describe "#dtg" do
    context "when the object is a DateTime" do
      let(:dummy) { DateTime.new{ include described_class } }

      it "returns datetime in a string" do
        expect(dummy.dtg).to eq("DTG gem is natively integrated with this class: #{dummy.class}")
      end
    end

    context "when the object is a Time" do
      let(:dummy) { Time.new{ include described_class } }

      it "returns time in a string" do
        expect(dummy.dtg).to eq("DTG gem is natively integrated with this class: #{dummy.class}")
      end
    end

    context "when the object is an ActiveSupport::TimeWithZone" do
      # ActiveSupport::TimeWithZone.new is not allowed to instantiate empty class
      let(:dummy) { Time.zone.now { include described_class } }

      it "returns the ActiveSupport::TimeWithZone in a string" do
        expect(dummy.dtg).to eq("DTG gem is natively integrated with this class: #{dummy.class}")
      end
    end
  end
end
