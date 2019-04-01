# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n) where n is the length of my_phrase.
#                            The inner loop is O(1), making the overall time complexity O(n).
# Space complexity: O(n) where n is the length of my_phrase.
def palindrome_check(my_phrase)
  return true if my_phrase == ""
  return false if my_phrase == nil
  return true if my_phrase.length == 1
  i = 0
  j = my_phrase.length - 1
  while i < j
    while my_phrase[i] == " "
      i += 1
    end

    while my_phrase[j] == " "
      j -= 1
    end
    return false if my_phrase[i] != my_phrase[j]
    i += 1
    j -= 1
  end
  return true
end
