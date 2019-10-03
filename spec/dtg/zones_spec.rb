RSpec.describe Zones do
  describe 'UTC_ZONES' do
    it 'returns alpha time offset' do
      expect(Zones::UTC_ZONES[:a]).to eq(+1)
    end

    it 'returns bravo time offset' do
      expect(Zones::UTC_ZONES[:b]).to eq(+2)
    end

    it 'returns charlie time offset' do
      expect(Zones::UTC_ZONES[:c]).to eq(+3)
    end

    it 'returns delta time offset' do
      expect(Zones::UTC_ZONES[:d]).to eq(+4)
    end

    it 'returns echo time offset' do
      expect(Zones::UTC_ZONES[:e]).to eq(+5)
    end

    it 'returns foxtrot time offset' do
      expect(Zones::UTC_ZONES[:f]).to eq(+6)
    end

    it 'returns golf time offset' do
      expect(Zones::UTC_ZONES[:g]).to eq(+7)
    end

    it 'returns hotel time offset' do
      expect(Zones::UTC_ZONES[:h]).to eq(+8)
    end

    it 'returns india time offset' do
      expect(Zones::UTC_ZONES[:i]).to eq(+9)
    end

    it 'returns juliet time offset' do
      expect(Zones::UTC_ZONES[:j]).to eq('')
    end

    it 'returns kilo time offset' do
      expect(Zones::UTC_ZONES[:k]).to eq(+10)
    end

    it 'returns lima time offset' do
      expect(Zones::UTC_ZONES[:l]).to eq(+11)
    end

    it 'returns mike time offset' do
      expect(Zones::UTC_ZONES[:m]).to eq(+12)
    end

    it 'returns november time offset' do
      expect(Zones::UTC_ZONES[:n]).to eq(-1)
    end

    it 'returns oscar time offset' do
      expect(Zones::UTC_ZONES[:o]).to eq(-2)
    end

    it 'returns papa time offset' do
      expect(Zones::UTC_ZONES[:p]).to eq(-3)
    end

    it 'returns quebec time offset' do
      expect(Zones::UTC_ZONES[:q]).to eq(-4)
    end

    it 'returns romeo time offset' do
      expect(Zones::UTC_ZONES[:r]).to eq(-5)
    end

    it 'returns sierra time offset' do
      expect(Zones::UTC_ZONES[:s]).to eq(-6)
    end

    it 'returns tango time offset' do
      expect(Zones::UTC_ZONES[:t]).to eq(-7)
    end

    it 'returns uniform time offset' do
      expect(Zones::UTC_ZONES[:u]).to eq(-8)
    end

    it 'returns victor time offset' do
      expect(Zones::UTC_ZONES[:v]).to eq(-9)
    end

    it 'returns whiskey time offset' do
      expect(Zones::UTC_ZONES[:w]).to eq(-10)
    end

    it 'returns x-ray time offset' do
      expect(Zones::UTC_ZONES[:x]).to eq(-11)
    end

    it 'returns yankee time offset' do
      expect(Zones::UTC_ZONES[:y]).to eq(-12)
    end

    it 'returns zulu time offset' do
      expect(Zones::UTC_ZONES[:z]).to eq('UTC')
    end
  end
end
