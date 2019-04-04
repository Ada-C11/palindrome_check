# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n) with n being the length of the input string
# Space complexity: O(1)
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  elsif my_phrase == ""
    return true
  end

  i = 0
  k = 1
  while i < my_phrase.length
    
    if my_phrase[i] == ' ' || my_phrase[-k] == ' '
      k += 1
      i += 1
    end

      if my_phrase[i] == my_phrase[-k]
        k += 1
        i += 1
      else
      return false
      end
    return true
  end
end
