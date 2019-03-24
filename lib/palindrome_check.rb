# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n) where n is the number of elements in my_phrase
# Space complexity: O(1)
def palindrome_check(my_phrase)
  return false if !my_phrase
  j, i = 1, 0
  while i + j < my_phrase.length
    if my_phrase[i] == " "
      i += 1
    elsif my_phrase[-j] == " "
      j += 1
    elsif my_phrase[i] != my_phrase[-j]
      return false
    else
      i += 1
      j += 1
    end
  end
  return true
end
