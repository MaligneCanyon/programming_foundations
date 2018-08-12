ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
name = "Spot"
p ages.has_key?(name)
p ages.key?(name)
p ages.fetch(name, "no #{name}")
p ages.keys.include?(name)

