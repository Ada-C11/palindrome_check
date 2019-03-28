# Time complexity: O(n), where n is the length of my_phrase
# Space complexity: O(1), no additional space is needed for the check
def palindrome_check(my_phrase)
  if my_phrase == nil
    return false
  end
  if my_phrase == "" || my_phrase.length == 1
    return true
  end

  i = 0
  j = my_phrase.length - 1
  while i < j
    while my_phrase[i] == " "
      i += 1
    end
    while my_phrase[j] == " "
      j -= 1
    end
    if my_phrase[i] != my_phrase[j]
      return false
    end
    i += 1
    j -= 1
  end
  return true
end
