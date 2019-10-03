RSpec.describe Format do
  describe 'FORMAT' do
    it 'shows a complete DTG size' do
      expect(Format::FORMAT[:size]).to eq(14)
    end

    it 'shows the day field size' do
      expect(Format::FORMAT[:size_day]).to eq(2)
    end

    it 'shows the hour field size' do
      expect(Format::FORMAT[:size_hour]).to eq(2)
    end

    it 'shows the zone field size' do
      expect(Format::FORMAT[:size_zone]).to eq(1)
    end

    it 'shows the month field size' do
      expect(Format::FORMAT[:size_month]).to eq(3)
    end

    it 'shows the year field size' do
      expect(Format::FORMAT[:size_year]).to eq(2)
    end

    it 'shows the day field start position' do
      expect(Format::FORMAT[:day_start]).to eq(0)
    end

    it 'shows the day field end position' do
      expect(Format::FORMAT[:day_end]).to eq(1)
    end

    it 'shows the day field position range' do
      expect(Format::FORMAT[:day_range]).to eq(0..1)
    end

    it 'shows the hour field start position' do
      expect(Format::FORMAT[:hour_start]).to eq(2)
    end

    it 'shows the hour field end position' do
      expect(Format::FORMAT[:hour_end]).to eq(3)
    end

    it 'shows the hour field position range' do
      expect(Format::FORMAT[:hour_range]).to eq(2..3)
    end

    it 'shows the minute field start position' do
      expect(Format::FORMAT[:minute_start]).to eq(4)
    end

    it 'shows the minute field end position' do
      expect(Format::FORMAT[:minute_end]).to eq(5)
    end

    it 'shows the minute field position range' do
      expect(Format::FORMAT[:minute_range]).to eq(4..5)
    end

    it 'shows the zone field start position' do
      expect(Format::FORMAT[:zone_start]).to eq(6)
    end

    it 'shows the zone field end position' do
      expect(Format::FORMAT[:zone_end]).to eq(6)
    end

    it 'shows the zone field position range' do
      expect(Format::FORMAT[:zone_range]).to eq(6..6)
    end

    it 'shows the month field start position' do
      expect(Format::FORMAT[:month_start]).to eq(8)
    end

    it 'shows the month field end position' do
      expect(Format::FORMAT[:month_end]).to eq(10)
    end

    it 'shows the month field position range' do
      expect(Format::FORMAT[:month_range]).to eq(8..10)
    end

    it 'shows the year field start position' do
      expect(Format::FORMAT[:year_start]).to eq(12)
    end

    it 'shows the year field end position' do
      expect(Format::FORMAT[:year_end]).to eq(13)
    end

    it 'shows the year field position range' do
      expect(Format::FORMAT[:year_range]).to eq(12..13)
    end
  end
end
