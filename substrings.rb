dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings words, dic
    sub_word = Hash.new(0)
    words.split.each { |word|  
        dic.each { |dic_word| 
            if word.downcase.include? dic_word.downcase
                sub_word[dic_word] += 1 
            end
        }
    }
    sub_word
end

p substrings "Howdy partner, sit down! How's it going?", dictionary 