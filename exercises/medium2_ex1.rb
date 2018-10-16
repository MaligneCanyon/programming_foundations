# inputs:
# - String (a selection of text)
# outputs:
# - String (the longest sentence)
# - Integer (the number of words in the longest sentence)
# reqs:
# - print the longest sentence in a passage of text
# - print the number of words in the longest sentence
# rules:
# - split passage into sentences based on '.', '!', '?' delimiter
# - print the delimiting char at the end of the sentence ???
# - split sentences into words based on whitespace
# datastruct:
# - Array (to hold each sentence)
# algo:
# - split text into sentences
# - split sentences into words
# - count the number of words in each sentence; determine the longest sentence
# - print the longest sentence (including the delimiting character)
# - print the number of words in the longest sentence

# ALT
# inputs:
# - String (some text)
# outputs:
# - String (the longest sentence in the text)
# - Integer (the num of words in the longest sentence)
# reqs:
# - read in some text
# - print the longest sentence in the text
# - print the num of words in the longest sentence
# rules:
# - sentence end with , or ! or ?
# - any sequence of non-space, non-sentence ending chars should be considered to be a word
# struct:
# - Array (to hold sentences)
# - Array (to number of words in each sentence)
# algo:
# - split the text into sentences
#   arr = text.split(/[.!?]/)
# - init a new arr to hold the num of words in each sentence
# - init a new arr to hold the words in the current sentence
# - map each sentence to remove leading/trailing spaces
#   - split each sentence into words
#   - count the num of words in the sentence
#   - add the num of words to the num words arr
#   - join the words together
# - sort the num words arr to determine the max num of words
# - find the ndx of the sentence w/ the max num of words
# - print the sentence w/ the same ndx
# - print the num of words in that sentence

text = <<-PASSAGE
  But, in a larger sense, we can not dedicate, we can not
  consecrate, we can not hallow this ground. The brave
  men, living and dead, who struggled here, have
  consecrated it, far above our poor power to add or
  detract. The world will little note, nor long remember
  what we say here, but it can never forget what they
  did here. It is for us the living, rather, to be dedicated
  here to the unfinished work which they who fought
  here have thus far so nobly advanced. It is rather for
  us to be here dedicated to the great task remaining
  before us -- that from these honored dead we take
  increased devotion to that cause for which they gave
  the last full measure of devotion -- that we here highly
  resolve that these dead shall not have died in vain
  -- that this nation, under God, shall have a new birth
  of freedom -- and that government of the people, by
  the people, for the people, shall not perish from the
  earth.
PASSAGE

# ALT
# file = "file.txt"
# file_handle = File.open(file, "r")
# text = File.read(file_handle)
# file_handle.close

sentences = text.split(/[.!?]/)

# ALT
# num_words = []
# words = []
# sentences.map! do |sentence| # remove leading/trailing spaces
#   words = sentence.split
#   num_words << words.size
#   words.join(' ')
# end
# most_words = num_words.sort[-1]
# ndx = num_words.index(most_words) # the ndx of the longest sentence

most_words = 0
longest_sentence = ''
sentences.each do |sentence|
  num_words = sentence.split.size
  if most_words < num_words
    most_words = num_words
    longest_sentence = sentence
  end
end
p "the longest sentence has #{most_words} words:"
p sentences[ndx]
