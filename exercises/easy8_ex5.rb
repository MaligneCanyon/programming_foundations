def palindrome?(str)
  # p str.reverse, str
  str.size > 1 && str.reverse == str
end

def substrings_at_start(str)
  arr = []
  (1..str.length).each { |i| arr << str.slice(0, i) }
  arr
end

def substrings(str)
  arr = []
  (0...str.length).each do |i|
    arr << substrings_at_start(str.slice(i, str.length - i))
  end
  arr.flatten
end

def palindromes(str)
  arr = []
  substrings(str).each { |substr| arr << substr if palindrome?(substr) }
  arr
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
