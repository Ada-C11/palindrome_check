# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n), where n is determined by the size of the string "my_phrase"
# Space complexity: O(1), where 1 is the space used by the variables containing the
# size of the string and the number representing iterations
def palindrome_check(my_phrase)
  if my_phrase.class != String
    return false
  end
  i = 0
  x = my_phrase.length
  while i <= x
    if my_phrase[i] == " "
      i += 1
    elsif my_phrase[x - 1] == " "
      x -= 1
    elsif my_phrase[i] != my_phrase[x - 1]
      return false
    else
      i += 1
      x -= 1
    end
  end
  return true
end
