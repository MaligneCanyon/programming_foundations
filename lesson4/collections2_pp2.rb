ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_age = 0
ages.each { |_, v| total_age += v }
p total_age
p ages.values.reduce(:+)
