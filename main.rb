require_relative 'lib/anagrams'

puts "Type the word to find his anagrams word:"
  word = gets.chomp
anagrams = Anagrams.new(word)
  if anagrams.valid_input?
    puts "All anagrams words from our list for word '#{word}' are:"
      puts anagrams.find_anagrams_words
  else
    puts "Input can't be empty"
  end
