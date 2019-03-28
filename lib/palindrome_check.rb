# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n) where n is the size of my_phrase
# Space complexity: O(1)
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  # check if each letter is the same
  smaller_index = 0
  larger_index = (my_phrase.length - 1)
  while smaller_index <= larger_index
    until my_phrase[smaller_index] != " "
      smaller_index += 1
    end
    until my_phrase[larger_index] != " "
      larger_index -= 1
    end
    if my_phrase[smaller_index] != my_phrase[larger_index]
      return false
    end
    smaller_index += 1
    larger_index -= 1
  end
  return true
end

# puts palindrome_check(" pull   up ")
