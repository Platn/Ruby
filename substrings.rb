=begin
Symbols to strings can cause memory leaks because the to_sym will take in
the user's input and create a copy that may never be freed.

Symbols are faster for instantiation because they are immutable but take up
more memory. This is no longer a concern for dynamic allocation for Ruby 2.2   

1. Printing symbols will be slower than printing strings due to conversion
2. Lots of different symbols increase the overall memory.
3. Strings are containers that are allowed to change
=end

=begin

# Get the length of a string
word = "Hello"
puts "Length: #{word.length}"
=end

def substrings(phrase, dictionary)
   words = Hash.new
   dictionary.each do |value|
      words[value.to_sym] = 0
   end
   
   # Check substrings of strings
   check = phrase.gsub(/\s|\?|!|,+/m, ' ').strip.split(" ")
   tempWord = ""   
   check.each do |word|
      word = word
      word.each_char do |value|
         tempWord += value.downcase
         puts tempWord.to_sym

         if words.has_key?(tempWord.to_sym)
            # puts "Key: #{tempWord.to_sym}"
            words[tempWord.to_sym] += 1
         
         elsif words.has_key?(value.to_sym)
             words[value.to_sym] += 1
         end
      end
   tempWord = ""
   end

   check.each do |word|
       word = word
       word.each_char do |value|
         tempWord += value.downcase.reverse
         puts tempWord.to_sym
 
         if words.has_key?(tempWord.to_sym)
            # puts "Key: #{tempWord.to_sym}"
            words[tempWord.to_sym] += 1 
         end
      end
      tempWord = ""
    end
   puts words
end

=begin 
tempWord = ""
check.each do |words|
   words.each_char do |value|
      tempWord += value
      puts tempWord
   end 

   tempWord = ""
   puts ""

   if words.has_key?(value.to_sym)
      words[value.to_sym] += 1
   end
end
=end

=begin
# splitThis = "Hello! My, name is Kevin? How's it going?"
splitThis = gets
# This splits for "?", "!", " ", ", gsub will replace all and strip is like trim

splits = splitThis.gsub(/\s|\?|!|,+/m, ' ').strip.split(" ")
word_search = Hash.new

# Loop through each of the splits, check the hash for the value
splits.each do |value|
   tempSym = value.to_sym
   word_search[tempSym] = 0
end

# Check below for the key, now if it has a key it needs to go in and increment
   print "Key: "
   puts word_search.has_key?(:Hello)
=end

=begin 
   Increment the hash at the symbol, we just have to convert to a symbol
   What we also have to look for is, what happens if the hash fails
   We can use has_key? Pass in the key as a symbol

word_search[:Hello] += 1
=end

phrase = "Howdy partner, sit down! How's it going?"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings(phrase,dictionary)
