flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles Beagle)

result = -1
flintstones.each_with_index { |v, i| result = i if v.start_with?('Be') && result < 0 }
p result

p flintstones.index { |v| v.start_with?('Be') } # simpler
