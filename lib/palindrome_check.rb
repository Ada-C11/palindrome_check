# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
# Time complexity: O(n^2), where n represents the length of the string. This is because the outer loop depends on i and j, which depend on the string length. For the inner loop, the worst case scenario iterates throughout the entire string if there are many spaces. Therefore, and O(n) loop inside another O(n) loop results in O(n^2).
# Space complexity: Constant, because regardless of the string length, we will still store values for i and j, where i is the beginning character to compare and j is the end.
def palindrome_check(my_phrase)
  return false unless my_phrase
  return true if my_phrase.length < 2

  i = 0
  j = my_phrase.length - 1

  while i < j

    # skips spaces
    while my_phrase[i] == " "
      i += 1
    end
    while my_phrase[j] == " "
      j -= 1
    end

    # compares beginning and end of string
    return false if my_phrase[i] != my_phrase[j]
    i += 1
    j -= 1
  end

  return true
end
