# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: ?
# Space complexity: ?

require 'pry'

def palindrome_check(my_phrase)
  return false if  my_phrase == nil
  return true if my_phrase[0] == ""

  my_phrase = remove_spaces(my_phrase)

  b = 0
  l = my_phrase.length
  last = l - 1
  while b < last
   if my_phrase[b] != my_phrase[last] 
    return false
   end
    b += 1
    last -= 1
  end
  return true
end

def remove_spaces(characters)
  c = 0
  l = characters.length
  words = ""

  while c < l
    while characters[c] == " "
    c += 1
    end
    first_char = c
    while characters[c] != " " && c < l
    c += 1
    end
    last_char = (c - 1)
    while first_char <= last_char
      words += characters[first_char]
      first_char += 1
    end
    c += 1
  end
  return words
end
