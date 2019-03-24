# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n)
# Space complexity: O(1)
def palindrome_check(my_phrase)
  return false if my_phrase.nil?
  return true if my_phrase == ""
  low = 0
  high = my_phrase.length - 1
  while low <= high
    if my_phrase[low] == " "
      low += 1
      next
    end

    if my_phrase[high] == " "
      high -= 1
      next
    end

    if my_phrase[low] != my_phrase[high]
      return false
    end

    low += 1
    high -= 1
  end
  return true
end
