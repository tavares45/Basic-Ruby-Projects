def substrings(string, dictionary)
    words = string.downcase.split
    substring_count = Hash.new(0)
  
    dictionary.each do |substring|
      words.each do |word|
        if word.include?(substring)
          substring_count[substring] += 1
        end
      end
    end
  
    substring_count
  end
  