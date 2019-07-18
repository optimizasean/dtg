require "rails_helper"

RSpec.describe Time do
  let(:time) { described_class.now { include Dtg
                          include Zones } }

  describe "#to_dtg" do
    context "when zone is a symbol" do
      context "when symbol is lowercase" do
        it "converts and formats as dtg" do
          (:a..:z).to_set.delete(:j).each do |zone|
            expect(time.to_dtg(zone)).to eq(time.in_time_zone(
                                                  Zones::UTC_ZONES[zone])
                                                  .strftime(
                                                    "%d%H%M#{zone.upcase.to_s} %b %y"))
          end
          # :j is separate because there is no local timezone identifier,
          # it just gets returned and formatted
          expect(time.to_dtg(:j)).to eq(time.format(:j))
        end
      end

      context "when symbol is uppercase" do
        it "converts and formats as dtg" do
          (:A..:Z).to_set.delete(:J).each do |zone|
            expect(time.to_dtg(zone)).to eq(time.in_time_zone(
                                                  Zones::UTC_ZONES[zone.downcase])
                                                  .strftime(
                                                    "%d%H%M#{zone.to_s} %b %y"))
          end
          # :J is separate because there is no local timezone identifier,
          # it just gets returned and formatted
          expect(time.to_dtg(:J)).to eq(time.format(:j))
        end
      end
    end

    context "when zone is a single character string" do
      context "when string is lowercase" do
        it "converts and formats as dtg" do
          ('a'..'z').to_set.delete('j').each do |zone|
            expect(time.to_dtg(zone)).to eq(time.in_time_zone(
                                                  Zones::UTC_ZONES[zone.to_sym])
                                                  .strftime(
                                                    "%d%H%M#{zone.upcase} %b %y"))
          end
          # 'j' is separate because there is no local timezone identifier
          # it just gets returned and formatted
          expect(time.to_dtg('j')).to eq(time.format(:j))
        end
      end

      context "when string is uppercase" do
        it "converts and formats as dtg" do
          ('A'..'Z').to_set.delete('J').each do |zone|
            expect(time.to_dtg(zone)).to eq(time.in_time_zone(
                                                  Zones::UTC_ZONES[zone.downcase.to_sym])
                                                  .strftime(
                                                    "%d%H%M#{zone} %b %y"))
          end
          # 'J' is separate because there is no local timezone identifier,
          # it just gets returned and formatted
          expect(time.to_dtg('J')).to eq(time.format(:j))
        end
      end
    end
  end

  describe "#format" do
    context "when zone is a symbol" do
      context "when symbol is lowercase" do
        it "formats to dtg standard" do
          (:a..:z).each do |zone|
            expect(time.format(zone)).to eq(time.strftime(
                                                  "%d%H%M#{zone.upcase.to_s} %b %y"))
          end
        end
      end

      context "when symbol is uppercase" do
        it "formats to dtg standard" do
          (:A..:Z).each do |zone|
            expect(time.format(zone)).to eq(time.strftime(
                                                  "%d%H%M#{zone.to_s} %b %y"))
          end
        end
      end
    end

    context "when zone is a single character string" do
      context "when string is lowercase" do
        it "formats to dtg standard" do
          ('a'..'z').each do |zone|
            expect(time.format(zone)).to eq(time.strftime(
                                                  "%d%H%M#{zone.upcase} %b %y"))
          end
        end
      end

      context "when string is uppercase" do
        it "formats to dtg standard" do
          ('A'..'Z').each do |zone|
            expect(time.format(zone)).to eq(time.strftime(
                                                  "%d%H%M#{zone} %b %y"))
          end
        end
      end
    end
  end

  describe "#convert" do
    context "when zone is a symbol" do
      context "when symbol is lowercase" do
        it "returns converted time to new zone" do
          (:a..:z).to_set.delete(:j).each do |zone|
            expect(time.convert(zone)).to eq(time.in_time_zone(
                                                   Zones::UTC_ZONES[zone]))
          end
          # :j is separate because there is no local timezone identifier,
          # it just gets returned and formatted
          expect(time.convert(:j)).to eq(time)
        end
      end

      context "when symbol is uppercase" do
        it "returns converted time to new zone" do
          (:A..:Z).to_set.delete(:J).each do |zone|
            expect(time.convert(zone)).to eq(time.in_time_zone(
                                                   Zones::UTC_ZONES[zone.downcase]))
          end
          # :J is separate because there is no local timezone identifier,
          # it just gets returned and formatted
          expect(time.convert(:J)).to eq(time)
        end
      end
    end

    context "when zone is a single character string" do
      context "when string is lowercase" do
        it "returns converted time to new zone" do
          ('a'..'z').to_set.delete('j').each do |zone|
            expect(time.convert(zone)).to eq(time.in_time_zone(
                                                   Zones::UTC_ZONES[zone.to_sym]))
          end
          # 'j' is separate because there is no local timezone identifier,
          # it just gets returned and formatted
          expect(time.convert('j')).to eq(time)
        end
      end

      context "when string is uppercase" do
        it "returns converted time to new zone" do
          ('A'..'Z').to_set.delete('J').each do |zone|
            expect(time.convert(zone)).to eq(time.in_time_zone(
                                                   Zones::UTC_ZONES[zone.downcase.to_sym]))
          end
          # 'J' is separate because there is no local timezone identifier,
          # it just gets returned and formatted
          expect(time.convert('J')).to eq(time)
        end
      end
    end
  end
end
