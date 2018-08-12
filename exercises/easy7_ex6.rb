def staggered_case(str)
  arr = str.chars
  counter = 0
  arr.map! do |c|
    counter += 1 if c.between?('a','z') || c.between?('A','Z')
    c = (counter.odd? ? c.upcase : c.downcase)
  end
  arr.join
end

p staggered_case('I Love Launch School!')
p staggered_case('ALL CAPS')
p staggered_case('ignore 77 the 444 numbers')
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
