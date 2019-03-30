# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n), where n is the number of characters in the string
# Space complexity: O(1) because the check is occuring in place
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  elsif my_phrase.length == 1 || my_phrase == ""
    return true
  else
    i = 0
    j = my_phrase.length - 1
    while i < j
      until my_phrase[i] != " "
        i += 1
      end
      until my_phrase[j] != " "
        j -= 1
      end

      if my_phrase[i] == my_phrase[j]
        i += 1
        j -= 1
      else
        return false
      end
    end
    return true
  end
end
