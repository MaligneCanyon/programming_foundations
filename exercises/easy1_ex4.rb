def count_occurrences (arr)
  hsh = {}
  arr.each do |str|
    if hsh[str]
      hsh[str] += 1
    else
      hsh[str] = 1
    end
  end
  hsh.each { |k, v| puts "#{k} => #{v}" }
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)
