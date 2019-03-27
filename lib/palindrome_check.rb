# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n), where n = the length of the input string -- the program will iterate over the string n/2 times
# Space complexity: O(1) -- no additional space is required
def palindrome_check(my_phrase)
  return false if my_phrase == nil

  i = 0
  j = my_phrase.length - 1

  until j <= i
    until my_phrase[i] != " " && my_phrase[j] != " "
      i += 1 if my_phrase[i] == " "
      j -= 1 if my_phrase[j] == " "
    end
    if my_phrase[i] != my_phrase[j]
      return false
    end
    i += 1
    j -= 1
  end
  return true
end
