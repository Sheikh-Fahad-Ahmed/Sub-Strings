def substrings(string,dictionary)
  result_hash = {}
  if single_word?(string)
    string_array = string.downcase.split('')
    hashing(string_array,dictionary, result_hash)
  else
    words_array = string.split(" ")
    words_array.each do |word|
      string_array = word.downcase.split('')
      result_hash = hashing(string_array,dictionary,result_hash)
    end
  end
  result_hash
end

def hashing(string_array,dictionary, result_hash)
  dictionary.each do |word|
    if check_string(string_array,word)
      if result_hash.include?(word)
        result_hash[word] += 1
      else
        result_hash[word] = 1
      end
    end
  end
  result_hash
end

def check_string(string_array,word)
  word.split('').all? do |char|
    string_array.include?(char)
  end
end

def single_word?(string)
  !string.include? (' ')
end




    
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


puts substrings("Howdy partner, sit down! How's it going?",dictionary) 


