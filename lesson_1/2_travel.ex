# Bob has traveled 200 km in four hours. Using variables, print a message showing his travel
# distance, time, and average velocity.

distance = 200
distance_unit = "km"
time = 4
time_unit = "h"

IO.puts """
  Distaince: #{distance}#{distance_unit}.
  Time: #{time}#{time_unit}.
  Average speed: #{distance/time}#{distance_unit}/#{time_unit}
"""
