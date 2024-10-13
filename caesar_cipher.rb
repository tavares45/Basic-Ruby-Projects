def caesar_cipher(string, shift)
    string.chars.map do |char|
      if char =~ /[A-Za-z]/
        base = char <= 'Z' ? 'A'.ord : 'a'.ord
        ((char.ord - base + shift) % 26 + base).chr
      else
        char
      end
    end.join
  end

  puts caesar_cipher("What a string!", 5)
  
