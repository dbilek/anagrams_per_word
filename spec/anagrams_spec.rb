require 'anagrams'

describe Anagrams do
  
  describe "#find_anagrams_word" do
   anagrams_words = %w{ paste pates peats septa spate tapes tepas }

   it "returns all anagrams words from file on given word 'paste'" do
    expect(Anagrams.new("paste").find_anagrams_words).to eql(anagrams_words)
   end

   it "returns false if input is empty" do
    expect(Anagrams.new("").find_anagrams_words).to be_falsey
   end

  end
end
