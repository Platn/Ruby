def caesar_cipher(passed_string, shift)
   passed_string.each_char do |value| 
         valueOrd = value.ord
         case valueOrd
         when 65..91
            if (valueOrd + shift > 91)
               print (valueOrd + shift - 26).chr
            else 
               print (valueOrd + shift).chr
            end
        when 96..122
            if (valueOrd + shift > 122)
               print (valueOrd + shift - 26).chr
               
            else
               print (valueOrd + shift).chr
            end
        else
            print value
         # This might not be necessary
      end
   end
   puts ""
end

change = "What a string!"
#puts change.ord + 1
caesar_cipher(change, 5)
