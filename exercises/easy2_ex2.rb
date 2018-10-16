# inputs:
# - integer (length and width of room)
# outputs:
# - proing a msg indicating area of room in sq feet and sq meters
# reqs:
# - prompt user for room length and width
# - calc and print out area of room
# rules:
# - 1 sq meter = 10.7639 sq feet
# algo:
# - prompt user for room length and width
# - calc area
# - build and print output string

SQ_FEET_PER_SQ_METER = 10.7639

def prompt(msg)
  puts "=> #{msg}"
end

prompt 'Enter the length of the room in meters:'
length = gets.to_f
prompt 'Enter the width of the room in meters:'
width = gets.to_f
area_meters = length * width
area_feet = area_meters * SQ_FEET_PER_SQ_METER
puts "The area of the room is #{area_meters.round(2)} square meters " \
  "(#{area_feet.round(2)} square feet)."
puts format("The area of the room is %.1f square meters (%.2f square feet).",
  area_meters, area_feet)
