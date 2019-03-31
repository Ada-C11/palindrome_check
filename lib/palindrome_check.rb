# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: linear, O(n) - where n is the length of the input string
#                  divided by 2
# Space complexity: constant, O(1) - the space used remains the same regardless
#                   of the string input size
def palindrome_check(my_phrase)
  return false if !my_phrase

  counter = 0
  start_index = 0
  end_index = my_phrase.length - 1

  while start_index < end_index
    start_index += 1 while my_phrase[start_index] == " "
    end_index -= 1 while my_phrase[end_index] == " "
    return false if my_phrase[start_index] != my_phrase[end_index]

    start_index += 1
    end_index -= 1
  end

  return true
end
