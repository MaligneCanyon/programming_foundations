advice = "Few things in life are as important as house training your pet dinosaur."
ndx = advice.index("house")
p ndx
p advice.slice!(0...ndx) # slice away portion from beginning of str up to but excluding ndx
p advice # outputs remaining (end) portion of str

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice(0...ndx)
p advice # outputs original str
