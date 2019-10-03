module Zones
  # UTC time zones as DTG symbols for proper conversion
  UTC_ZONES = {
    a: +1,
    b: +2,
    c: +3,
    d: +4,
    e: +5,
    f: +6,
    g: +7,
    h: +8,
    i: +9,
    # A: Alpha Time: UTC +01:00 (Paris, France)
    # B: Bravo Time: UTC +02:00 (Athens, Greece)
    # C: Charlie Time: UTC +03:00 (Moscow, Russia)
    # D: Delta Time: UTC +04:00 (Kabul, Afghanistan)
    # E: Echo Time: UTC +05:00 (New Delhi, India)
    # F: Foxtrot Time: UTC +06:00 (Dhanka, Bangladesh)
    # G: Golf Time: UTC +07:00 (Bangkok, Thailand)
    # H: Hotel Time: UTC +08:00 (Beijing, China)
    # I: India Time: UTC +09:00 (Tokyo, Japan)
    # J: Juliet Time: (Local Time Zone)
    j: '',
    k: +10,
    l: +11,
    m: +12,
    # K: Kilo Time: UTC +10:00 (Sydney, Australia)
    # L: Lima Time: UTC +11:00 (Honiara, Solomon Islands)
    # M: Mike Time: UTC +12:00 (Wellington, New Zealand)
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
end
