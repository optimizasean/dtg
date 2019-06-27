class Time
    def to_dtg(zone = :z)
        format = "%d%H%M#{zone.upcase} %b %y"
        time = self
        # Convert Time into proper zone
        case zone.downcase
            # A: Alpha Time: UTC +01:00 (Paris, France)
            when :a
                time = time.in_time_zone(+1)
            # B: Bravo Time: UTC +02:00 (Athens, Greece)
            when :b
                time = time.in_time_zone(+2)
            # C: Charlie Time: UTC +03:00 (Moscow, Russia)
            when :c
                time = time.in_time_zone(+3)
            # D: Delta Time: UTC +04:00 (Kabul, Afghanistan)
            when :d
                time = time.in_time_zone(+4)
            # E: Echo Time: UTC +05:00 (New Delhi, India)
            when :e
                time = time.in_time_zone(+5)
            # F: Foxtrot Time: UTC +06:00 (Dhanka, Bangladesh)
            when :f
                time = time.in_time_zone(+6)
            # G: Golf Time: UTC +07:00 (Bangkok, Thailand)
            when :g
                time = time.in_time_zone(+7)
            # H: Hotel Time: UTC +08:00 (Beijing, China)
            when :h
                time = time.in_time_zone(+8)
            # I: India Time: UTC +09:00 (Tokyo, Japan)
            when :i
                time = time.in_time_zone(+9)
            # J: Juliet Time: (Local Time Zone)
            when :j
                time = time
            # K: Kilo Time: UTC +10:00 (Sydney, Australia)
            when :k
                time = time.in_time_zone(+10)
            # L: Lima Time: UTC +11:00 (Honiara, Solomon Islands)
            when :l
                time = time.in_time_zone(+11)
            # M: Mike Time: UTC +12:00 (Wellington, New Zealand)
            when :m
                time = time.in_time_zone(+12)
            # N: November Time: UTC -01:00 (Azores)
            when :n
                time = time.in_time_zone(-1)
            # O: Oscar Time: UTC -02:00 (Gothab, Greenland)
            when :o
                time = time.in_time_zone(-2)
            # P: Papa Time: UTC -03:00 (Buenos Aires, Argentina)
            when :p
                time = time.in_time_zone(-3)
            # Q: Quebec Time: UTC -04:00 (Halifax, Nova Scotia)
            when :q
                time = time.in_time_zone(-4)
            # R: Romeo Time: UTC -05:00 (New York, NY United States)
            when :r
                time = time.in_time_zone(-5)
            # S: Sierra Time: UTC -06:00 (Dallas, TX United States)
            when :s
                time = time.in_time_zone(-6)
            # T: Tango Time: UTC -07:00 (Denver, CO United States)
            when :t
                time = time.in_time_zone(-7)
            # U: Uniform Time: UTC -08:00 (Los Angeles, CA United States)
            when :u
                time = time.in_time_zone(-8)
            # V: Victor Time: UTC -09:00 (Juneau, AK United States)
            when :v
                time = time.in_time_zone(-9)
            # W: Whiskey Time: UTC -10:00 (Honolulu, HI United States)
            when :w
                time = time.in_time_zone(-10)
            # X: X-Ray Time: UTC -11:00 (Nome, AK United States)
            when :x
                time = time.in_time_zone(-11)
            # Y: Yankee Time: UTC -12:00 (Suva, Fiji)
            when :y
                time = time.in_time_zone(-12)
            # Z: Zulu Time: UTC +-00:00 (Greenwich, England)
            when :z
                time = time.in_time_zone('UTC')
            else
                raise "Error: Unrecognized Symbol for Timezone: #{zone}"
        end
        time.strftime(format)
    end
end
