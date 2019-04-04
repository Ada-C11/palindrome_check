# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n), where n is the length of the array
# Space complexity: O(1), constant
def palindrome_check(my_phrase)
  return false if my_phrase == nil
  start_index = 0
  end_index = my_phrase.length - 1
  my_phrase.length.times do
    if my_phrase[start_index] == " "
      while my_phrase[start_index] == " "
        start_index += 1
      end
    elsif my_phrase[end_index] == " "
      while my_phrase[end_index] == " "
        end_index -= 1
      end
    elsif my_phrase[start_index] == my_phrase[end_index]
      start_index += 1
      end_index -= 1
    else
      return false
    end
  end
  return true
end
