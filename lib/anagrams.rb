class Anagrams
  attr_accessor :word_from_input

  def initialize(word_from_input)
   self.word_from_input = word_from_input
  end
  
  def valid_input?
    true unless word_from_input.empty?
  end

  def find_anagrams_words
    if valid_input?
      anagrams_list = []
   
      File.foreach("anagrams_worldlist/anagrams-worldlist.txt") do |line|
        line = utf8_encode(line).chomp
    
        if same_size?(line, @word_from_input)
          anagrams_list << line  if matched_character_same_size?(@word_from_input, line)
        end
      end

      anagrams_list
    end
  end

  private

    def utf8_encode(line_from_file)
      line_from_file.encode("UTF-16be", :invalid=>:replace, :replace=>"?").encode('UTF-8')
    end

    def same_size?(line_from_file, word_from_input)
      line_from_file.size == word_from_input.size
    end

    def matched_character_same_size?(word_from_input, line_from_file)
      word_from_input.scan(/[#{line_from_file.downcase}]/).join.size == word_from_input.size
    end

end
