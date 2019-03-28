# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n) where n is the size of my_phrase
# Space complexity: O(1)
def palindrome_check(my_phrase)
  # temp = my_phrase
  if my_phrase == nil
    return false
  end

  #eliminate any spaces in phrase
  tracking_index = 0
  while tracking_index < my_phrase.length
    if my_phrase[tracking_index] == " "
      my_phrase[tracking_index] = ""
      tracking_index -= 1
    end
    tracking_index += 1
  end

  # check if each letter is the same
  smaller_index = 0
  larger_index = (my_phrase.length - 1)
  while smaller_index <= larger_index
    if my_phrase[smaller_index] != my_phrase[larger_index]
      return false
    end
    smaller_index += 1
    larger_index -= 1
  end
  return true
end

# puts palindrome_check(" pull   up ")
