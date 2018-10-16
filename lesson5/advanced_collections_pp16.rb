# # this should support any size of UUID, based on the groupings spec'd in the HYPHEN_SET
# CHAR_SET = %w{ 0 1 2 3 4 5 6 7 8 9 a b c d e f }
# HYPHEN_SET = [8, 4, 4, 4, 12]

# def uuid()
#   uuid_size = 0
#   hyphen_arr = HYPHEN_SET.map do |value|
#     uuid_size += value
#   end
#   p hyphen_arr

#   str = ''
#   hyphen_ndx = 0
#   (1..uuid_size).each do |counter| # each char in the UUID
#     char = CHAR_SET.sample
#     str << char
#     if counter < uuid_size && counter == hyphen_arr[hyphen_ndx] # insert a hyphen
#       hyphen_ndx += 1
#       str << '-'
#     end
#   end
#   str
# end

# p uuid


# ALT VERSION:
# inputs: none
# outputs: String
# reqs:
# - compose a string of randomly-selected hex chars
# rules:
# - 32 hex chars
# - 5 segments of 8-4-4-4-12 chars, hyphen-sepd (no hyphen after last segment)
# datastruct: String
# algo:
# - init a counter
# - init an output string
# - for each char in the output string
#   - randomly-select a hex char
#   - append the hex char to the output string
#   - increment the counter
#   - if the counter corresponds to the value of the section divider
#       - append a hyphen to the output string
#       - reset the counter
#   - break if the end of output string has been reached
# - return the output string

def gen_hex_char()
  arr = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
  arr.sample
end

def uuid()
  counter = 0
  str = ''
  section_ndx = 0
  section_arr = [8, 4, 4, 4, 12]
  32.times do
    str << gen_hex_char
    counter += 1
    if counter == section_arr[section_ndx]
      counter = 0
      section_ndx += 1
      str << '-' unless section_ndx == section_arr.size
    end
  end
  str
end

p uuid
