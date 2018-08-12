hsh = {}
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones.each_with_index { |v, i| hsh[v] = i }
p hsh
