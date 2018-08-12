flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
result = -1
flintstones.each_with_index{ |v, i| result = i if v.start_with?('Be') }
p result

p flintstones.index{ |v| v.start_with?('Be') } # simpler
