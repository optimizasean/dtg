[![GitHub version](https://badge.fury.io/gh/SolarisFlare%2Fdtg.svg)](https://badge.fury.io/gh/SolarisFlare%2Fdtg)
[![Gem Version](https://badge.fury.io/rb/dtg.svg)](https://badge.fury.io/rb/dtg)
[![Build Status](https://travis-ci.org/SolarisFlare/dtg.svg?branch=master)](https://travis-ci.org/SolarisFlare/dtg)
[![Coverage Status](https://coveralls.io/repos/github/SolarisFlare/dtg/badge.svg?branch=master)](https://coveralls.io/github/SolarisFlare/dtg?branch=master)
[![Maintainability](https://api.codeclimate.com/v1/badges/c0d2545fedb195f5d647/maintainability)](https://codeclimate.com/github/SolarisFlare/dtg/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/c0d2545fedb195f5d647/test_coverage)](https://codeclimate.com/github/SolarisFlare/dtg/test_coverage)
[![Inline docs](http://inch-ci.org/github/SolarisFlare/dtg.svg?branch=master)](http://inch-ci.org/github/SolarisFlare/dtg)

[![License](https://img.shields.io/github/license/SolarisFlare/dtg.svg)](https://raw.githubusercontent.com/SolarisFlare/dtg/master/LICENSE)
[![Downloads](https://img.shields.io/gem/dt/dtg.svg)](https://rubygems.org/gems/dtg)
[![Download Rank](https://img.shields.io/gem/rt/dtg.svg)](https://rubygems.org/gems/dtg)
[![Daily Download Rank](https://img.shields.io/gem/rd/dtg.svg)](https://rubygems.org/dtg)

[![Open Github Issues](https://img.shields.io/github/issues-raw/SolarisFlare/dtg.svg)](https://github.com/SolarisFlare/dtg/issues)
[![Closed Github Issues](https://img.shields.io/github/issues-closed-raw/SolarisFlare/dtg.svg)](https://github.com/SolarisFlare/dtg/issues)
[![Star Project](https://img.shields.io/github/stars/SolarisFlare/dtg.svg?style=social)]
[![Watch Project](https://img.shields.io/github/watchers/SolarisFlare/dtg.svg?style=social)]
[![Follow Me](https://img.shields.io/github/followers/SolarisFlare.svg?style=social)]

# Dtg

DTG is a ruby  gem to convert Time objects into DTG format.

A DTG is a DateTimeGroup which is used in the military to save time.  DTG are saved in the format DDHHMML MMM YY, where D is day, H is hour, L is letter, M is month, and Y is year.  The Month is the 3 character representation such as JAN for January, MAY for May, DEC for December and so on.  Year is only the last two digits of the year e.g. 2019 is just 19.  The letter is the zone code such as W for whiskey which is HST, Z for zulu which is GMT, A-Z are the zones used.

DTG integrates natively with the DateTime, Time, and ActiveSupport::TimeWithZone classes in Ruby/Rails and is callable on all Time objects.  DTG returns a visually formatted dtg converted based on knolwedge of the zone of the object and the intended zone. It is also respective of daylight savings time of your objects zone and its intended zone.

DTG is the military acronym referring to what is also called nautical or maritime time zones.  These zones are mapped across the world from A-Z not including J as J references the local timezone of yourself.

## Table of Contents

1. [DTG](#dtg)
2. [Table of Contents](#table-of-contents)
3. [Usage](#usage)
    1. [DTG Zones](#dtg-zones)
    2. [DTG Zone Map](#dtg-zone-map)
4. [Installation](#installation)
5. [Testing](#testing)
6. [Problems](#problems)
7. [Contributing](#contributing)
8. [License](#license)

## Usage

DTG implements the method to_dtg into the Time class and is fully compatible with all Time objects(DateTime, Time, and TimeWithZone have been tested, custom objects should also function the same as long as their properties emulate that of the former).

To use:

```ruby
TIMEOBJECT.to_dtg
```

and it will return the time object as a string in the zulu timezone in dtg format.

For other DTG formats:

```ruby
TIMEOBJECT.to_dtg(:zone)
```

where zone is any single letter symbol A-Z, capital or lower case and it will return the time object as a string in the zone format.

### DTG Zones

- A: Alpha Time: UTC +01:00 (Paris, France)
- B: Bravo Time: UTC +02:00 (Athens, Greece)
- C: Charlie Time: UTC +03:00 (Moscow, Russia)
- D: Delta Time: UTC +04:00 (Kabul, Afghanistan)
- E: Echo Time: UTC +05:00 (New Delhi, India)
- F: Foxtrot Time: UTC +06:00 (Dhanka, Bangladesh)
- G: Golf Time: UTC +07:00 (Bangkok, Thailand)
- H: Hotel Time: UTC +08:00 (Beijing, China)
- I: India Time: UTC +09:00 (Tokyo, Japan)
- J: Juliet Time: (Local Time Zone)
- K: Kilo Time: UTC +10:00 (Sydney, Australia)
- L: Lima Time: UTC +11:00 (Honiara, Solomon Islands)
- M: Mike Time: UTC +12:00 (Wellington, New Zealand)
- N: November Time: UTC -01:00 (Azores)
- O: Oscar Time: UTC -02:00 (Gothab, Greenland)
- P: Papa Time: UTC -03:00 (Buenos Aires, Argentina)
- Q: Quebec Time: UTC -04:00 (Halifax, Nova Scotia)
- R: Romeo Time: UTC -05:00 (New York, NY United States)
- S: Sierra Time: UTC -06:00 (Dallas, TX United States)
- T: Tango Time: UTC -07:00 (Denver, CO United States)
- U: Uniform Time: UTC -08:00 (Los Angeles, CA United States)
- V: Victor Time: UTC -09:00 (Juneau, AK United States)
- W: Whiskey Time: UTC -10:00 (Honolulu, HI United States)
- X: X-Ray Time: UTC -11:00 (Nome, AK United States)
- Y: Yankee Time: UTC -12:00 (Suva, Fiji)
- Z: Zulu Time: UTC +-00:00 (Greenwich, England)

### DTG Zone Map

![DTG zones displayed across the map with their offsets](dtg_zones.png?raw=true "DTG Zones")

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dtg'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install dtg
```

## Testing

If you would like to test this gem before adding it to your project to see it's functionality, follow these steps:

1. Clone the repository

```sh
git clone https://github.com/SolarisFlare/dtg
```

2. cd into the test/dummy directory

3. Start the rails console

```sh
rails console
```

OR

```sh
rails c
```

4. Test away

```ruby
#<Tested in irb console(default rails), also works in Pry console>

y = Time.zone.now
y.dtg
y = Time.zone.now.to_dtg(:j)
y

x = Time.now
x.dtg
x.to_dtg(:j)
x.to_dtg(:J)
x.to_dtg
x.to_dtg(:z)
x.to_dtg(:Z)
x.to_dtg(:W)
x.to_dtg(:m)

z = DateTime.now
z.dtg
z.to_dtg
z.convert :w
z.to_dtg :c

Time.now.to_dtg(:a)
DateTime.now.to_dtg :Q
Time.zone.now.to_dtg L.to_sym
```

> Note: The .dtg method will return a string naming the type of the object you called it on and can therefore be used to verify if the gem has successfully natively integrated with Ruby/Rails(should fail if not).  I included this for testing purposes to check that the right modules were being loaded with DTG and have run into no load failures but for peace of mind I left it in in case you want to see for yourself.

## Problems

DTG relies upon time objects that have timezone set either as Time.zone or as the default offset recorded.  I recommend setting the application timezone in the application.rb configuration file so that dtg works automatically on any generated time objects otherwise it will convert all time objects from UTC +00:00 which is the rails default zone (Etc/UTC) and therefore can provide unintended results.  TimeWithZone is different and therefore is a Time with offset and with zone.  Therefore without data loss, you can convert from TimeWithZone to DateTime or Time and maintain the same time, however, you may lose the zone code but the offset will be kept and the zone code can be recovered based on this offset but certain zones that follow daylight savings time may lose their savings-ness and will no longer spring forward or backward if converted.

## Contributing

If you want to contribute please let me know though either an email or you can just submit a pull request to add anything!

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
