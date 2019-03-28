# A method to check if the input my_phrase is a palindrome.
# Return true if the my_phrase is a palindrome. Return false otherwise.
# Time complexity:  O(n)
# Space complexity: O(1)
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end
  i = 0
  j = my_phrase.length - 1
  while i < j
    while i < my_phrase.length && my_phrase[i] == " "
      i += 1
    end
    while j >= 0 && my_phrase[j] == " "
      j -= 1
    end
    if i < my_phrase.length && j >= 0 && my_phrase[i] != my_phrase[j]
      return false
    end
    i += 1
    j -= 1
  end
  return true
end
