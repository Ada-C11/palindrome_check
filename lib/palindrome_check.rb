# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n), where n is the number of characters in the string.
# Space complexity: O(1), there is no new space in memory being created
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  return true if my_phrase.length == 0

  first_index = 0
  last_index = my_phrase.length - 1

  while first_index < last_index
    until my_phrase[first_index] != " "
      first_index += 1
    end

    until my_phrase[last_index] != " "
      last_index -= 1
    end

    return false unless my_phrase[first_index] == my_phrase[last_index]

    first_index += 1
    last_index -= 1

  end
  return true
  

end
