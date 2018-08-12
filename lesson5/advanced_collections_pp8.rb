hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
hsh.each do |_, v|
  v.each do |str|
    p "#{str}:"
    str.chars.each do |char|
      p char if char =~ /[aeiou]/i
    end
  end
end
