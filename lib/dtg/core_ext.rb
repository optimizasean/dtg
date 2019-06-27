class Time
    DTG_ZONES = {
        # A: Alpha Time: UTC +01:00 (Paris, France)
        a: +1,
        # B: Bravo Time: UTC +02:00 (Athens, Greece)
        b: +2,
        # C: Charlie Time: UTC +03:00 (Moscow, Russia)
        c: +3,
        # D: Delta Time: UTC +04:00 (Kabul, Afghanistan)
        d: +4,
        # E: Echo Time: UTC +05:00 (New Delhi, India)
        e: +5,
        # F: Foxtrot Time: UTC +06:00 (Dhanka, Bangladesh)
        f: +6,
        # G: Golf Time: UTC +07:00 (Bangkok, Thailand)
        g: +7,
        # H: Hotel Time: UTC +08:00 (Beijing, China)
        h: +8,
        # I: India Time: UTC +09:00 (Tokyo, Japan)
        i: +9,
        # J: Juliet Time: (Local Time Zone)
        j: '',
        # K: Kilo Time: UTC +10:00 (Sydney, Australia)
        k: +10,
        # L: Lima Time: UTC +11:00 (Honiara, Solomon Islands)
        l: +11,
        # M: Mike Time: UTC +12:00 (Wellington, New Zealand)
        m: +12,
        # N: November Time: UTC -01:00 (Azores)
        n: -1,
        # O: Oscar Time: UTC -02:00 (Gothab, Greenland)
        o: -2,
        # P: Papa Time: UTC -03:00 (Buenos Aires, Argentina)
        p: -3,
        # Q: Quebec Time: UTC -04:00 (Halifax, Nova Scotia)
        q: -4,
        # R: Romeo Time: UTC -05:00 (New York, NY United States)
        r: -5,
        # S: Sierra Time: UTC -06:00 (Dallas, TX United States)
        s: -6,
        # T: Tango Time: UTC -07:00 (Denver, CO United States)
        t: -7,
        # U: Uniform Time: UTC -08:00 (Los Angeles, CA United States)
        u: -8,
        # V: Victor Time: UTC -09:00 (Juneau, AK United States)
        v: -9,
        # W: Whiskey Time: UTC -10:00 (Honolulu, HI United States)
        w: -10,
        # X: X-Ray Time: UTC -11:00 (Nome, AK United States)
        x: -11,
        # Y: Yankee Time: UTC -12:00 (Suva, Fiji)
        y: -12,
        # Z: Zulu Time: UTC +-00:00 (Greenwich, England)
        z: 'UTC'
    }

    def to_dtg(zone = :z)
        self.convert(zone).format(zone)
    end

    def format(zone = :z)
        dtg = "%d%H%M#{zone.upcase} %b %y"
        self.strftime(dtg)
    end

    def convert(zone = :z)
        raise "Error: #{zone} is not a valid zone" unless DTG_ZONES.has_key?(zone.downcase)
        (zone.downcase == :j) ? self : self.in_time_zone(DTG_ZONES[zone.downcase])
    end
end
