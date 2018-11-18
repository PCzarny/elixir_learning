distance = 200
distance_unit = "km"
time = 4
time_unit = "h"

IO.puts """
  Distaince: #{distance}#{distance_unit}.
  Time: #{time}#{time_unit}.
  Average speed: #{distance/time}#{distance_unit}/#{time_unit}
"""
