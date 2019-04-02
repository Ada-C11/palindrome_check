# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n) where n is the lenght of my_phrase
# Space complexity: O(1) because no additional space is needed
def palindrome_check(my_phrase)
  return false if my_phrase.nil?
  i = 0
  j = my_phrase.length - 1

  while i < j
    if my_phrase[i] == my_phrase[j]
      i += 1
      j -= 1
    elsif my_phrase[i] == " "
      i += 1
    elsif my_phrase[j] == " "
      j -= 1
    elsif my_phrase[i] != my_phrase[j] && my_phrase[i] != " " && my_phrase[j] != " "
      return false
    end
  end

  return true
end

def string_reverse(my_string)
  if my_string != nil
    a = 0
    b = my_string.length - 1
    temp = nil
    while a < b
      temp = my_string[a]
      my_string[a] = my_string[b]
      my_string[b] = temp
      a += 1
      b -= 1
    end
    return my_string
  end
end
