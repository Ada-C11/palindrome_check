# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n) where n is the length of the string "my_phrase".
# Space complexity: O(1) - no additional space is needed beyond what is allocated at the start
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  i = 0
  j = 0
  k = my_phrase.length - 1

  until i == my_phrase.length / 2
    case
    when my_phrase[j] == " "
      j += 1
    when my_phrase[k] == " "
      k -= 1
    when my_phrase[j] == my_phrase[k]
      j += 1
      k -= 1
      i += 1
    else
      return false
    end
  end
  return true
end
