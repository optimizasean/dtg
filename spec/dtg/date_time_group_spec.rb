RSpec.describe DateTimeGroup do
  # Set Time Zone before tests: ActiveSupport::TimeWithZone needs this or will nil:nilObject (e.g. Time.zone.now)
  before do
    # UTC is a fair zone right?
    Time.zone = 'UTC'
  end

  describe '#dtg' do
    context 'when the object is a DateTime' do
      let(:dummy) { DateTime.new { include described_class } }

      it 'returns datetime in a string' do
        expect(dummy.dtg).to eq(
          "DTG gem is natively integrated with this class: #{dummy.class}"
        )
      end
    end

    context 'when the object is a Time' do
      let(:dummy) { Time.new { include described_class } }

      it 'returns time in a string' do
        expect(dummy.dtg).to eq(
          "DTG gem is natively integrated with this class: #{dummy.class}"
        )
      end
    end

    context 'when the object is an ActiveSupport::TimeWithZone' do
      # ActiveSupport::TimeWithZone.new is not allowed to instantiate empty class
      let(:dummy) { Time.zone.now { include described_class } }

      it 'returns the ActiveSupport::TimeWithZone in a string' do
        expect(dummy.dtg).to eq(
          "DTG gem is natively integrated with this class: #{dummy.class}"
        )
      end
    end
  end

  describe '.parse' do
    it 'parses a dtg into its parts' do
      time = Time.now.convert(:z)
      dtg = time.to_dtg(:z)
      parsed = described_class.parse(dtg)
      expect(parsed[:day]).to eq(time.strftime('%d').to_s)
      expect(parsed[:hour]).to eq(time.strftime('%H').to_s)
      expect(parsed[:minute]).to eq(time.strftime('%M').to_s)
      expect(parsed[:zone]).to eq('Z')
      expect(parsed[:month]).to eq(time.strftime('%b'))
      expect(parsed[:year]).to eq(time.strftime('%y'))
    end
  end

  describe '.from_dtg' do
    it 'converts from a dtg into the proper time' do
      time = Time.now.convert(:z)
      dtg = time.to_dtg(:z)
      # anything less than minutes is lost in a DTG
      time = time.change(usec: 0)
      time = time.change(sec: 0)
      expect(described_class.from_dtg(dtg)).to eq(time)
    end
  end

  describe '.convert' do
    it 'converts a dtg into a different zoned dtg' do
      time = Time.now.convert(:z)
      dtg = time.to_dtg(:z)
      expect(described_class.convert(dtg, :w)).to eq(time.to_dtg(:w))
    end
  end
end
