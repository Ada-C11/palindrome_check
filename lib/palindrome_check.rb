# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n) where n is the number of characters in the input string
# Space complexity: O(1)
def palindrome_check(my_phrase)
  return false if my_phrase.nil?
  left_index = 0
  right_index = my_phrase.length - 1
  while left_index < right_index
    unless my_phrase[left_index] == my_phrase[right_index]
      return false
    end
    left_index += 1
    while my_phrase[left_index] == " "
      left_index += 1
    end
    right_index -= 1
    while my_phrase[right_index] == " "
      right_index -= 1
    end
  end
  return true
end